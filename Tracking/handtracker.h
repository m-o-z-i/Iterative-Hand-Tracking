#ifndef HANDTRACKER_H
#define HANDTRACKER_H

#include <iostream>
#include <vector>
#include <memory>
#include <array>

#include <opencv2/core.hpp>

#include "Clustering/mserclustering.h"
#include "Tracking/trackingalgorithm.h"

#include "hand.h"
#include "blob.h"
#include "handmodel.h"

// todo: delete
#include "globalsettings.h"


class HandTracker
{
public:
    HandTracker();
    std::vector<std::shared_ptr<Hand> > process(const std::vector<std::shared_ptr<MSERCluster> >& clusters);
    std::shared_ptr<Hand> undefinedHand() const;

private:
    void updateHand(std::shared_ptr<Hand> hand, const std::shared_ptr<MSERCluster> cluster);
    void updateBlob(std::shared_ptr<Blob> blob, const std::shared_ptr<Blob> newBlob);
    void addBlob(std::shared_ptr<Hand> hand, const std::shared_ptr<Blob> newBlob);
    void addHand(std::vector<std::shared_ptr<Hand> >& hands, const std::shared_ptr<MSERCluster> cluster);
    void deleteHand(const std::shared_ptr<Hand> hand);
    void deleteBlob(std::shared_ptr<Hand> hand, std::shared_ptr<Blob> blob);

    // track hands with unconfident cluster (use Global-Tracker)
    void processUnconfidentCluster(const std::vector<std::shared_ptr<Hand> >& hands, const std::vector<std::shared_ptr<MSERCluster> >& clusters);

    // find and track undefined finger due unconfident initial clustering
    // and adopt IDs of current hand
    void trackUndefinedFinger(const std::vector<std::shared_ptr<MSERCluster> >& clusters);

    // adopt IDs of untracked and added current fingers
    void processIDKeeper();

    // solve wrong hand assignements
    void processUnconfidentHands();
    
    // delete all untracked finger, hands,...
    void deleteUntracked();

    std::vector<std::shared_ptr<Hand> > mHands;
    std::vector<std::shared_ptr<Hand> > mBackupHands;
    std::shared_ptr<Hand> mUndefinedHand;

    unsigned int mHandIDs;
    unsigned int mBlobIDs;
};

#endif // HANDTRACKER_H
