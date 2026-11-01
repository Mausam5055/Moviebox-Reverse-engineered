package com.mbridge.msdk.out;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class NativeListener {

    public interface FilpListener {
        void filpEvent(int i11);
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface NativeAdListener {
        void onAdClick(Campaign campaign);

        void onAdFramesLoaded(List<Frame> list);

        void onAdLoadError(String str);

        void onAdLoaded(List<Campaign> list, int i11);

        void onLoggingImpression(int i11);
    }

    public interface NativeTrackingListener extends BaseTrackingListener {
        void onDismissLoading(Campaign campaign);

        void onDownloadFinish(Campaign campaign);

        void onDownloadProgress(int i11);

        void onDownloadStart(Campaign campaign);

        boolean onInterceptDefaultLoadingDialog();

        void onShowLoading(Campaign campaign);
    }

    public static class Template {
        private int adNum;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private int f36774id;

        public Template(int i11, int i12) {
            this.f36774id = i11;
            this.adNum = i12;
        }

        public int getAdNum() {
            return this.adNum;
        }

        public int getId() {
            return this.f36774id;
        }

        public void setAdNum(int i11) {
            this.adNum = i11;
        }

        public void setId(int i11) {
            this.f36774id = i11;
        }
    }

    public interface TrackingExListener extends NativeTrackingListener {
        void onLeaveApp();
    }
}
