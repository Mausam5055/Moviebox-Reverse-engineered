package com.cloud.tmc.miniapp.base;

import androidx.collection.s;
import com.cloud.tmc.integration.chain.page.PageChainContext;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ShowPageData {
    private boolean isRedirect;
    private boolean loadFail;
    private String originalUrl;
    private PageChainContext pageChainContext;
    private String pageRandomIdByGAID;
    private ConcurrentHashMap<Integer, Long> progressCollectList;
    private MiniAppH5BaseFragment.ProgressStep progressCurrentStep;
    private long progressStartTime;
    private String requestUrl;
    private ShowPageStatus status;
    private String url;
    private String virtual_h5PageId;

    public ShowPageData(String originalUrl, String url, String requestUrl, String virtual_h5PageId, ShowPageStatus status, boolean z10, String pageRandomIdByGAID, PageChainContext pageChainContext, boolean z11, ConcurrentHashMap<Integer, Long> progressCollectList, MiniAppH5BaseFragment.ProgressStep progressStep, long j11) {
        Intrinsics.h(originalUrl, "originalUrl");
        Intrinsics.h(url, "url");
        Intrinsics.h(requestUrl, "requestUrl");
        Intrinsics.h(virtual_h5PageId, "virtual_h5PageId");
        Intrinsics.h(status, "status");
        Intrinsics.h(pageRandomIdByGAID, "pageRandomIdByGAID");
        Intrinsics.h(progressCollectList, "progressCollectList");
        this.originalUrl = originalUrl;
        this.url = url;
        this.requestUrl = requestUrl;
        this.virtual_h5PageId = virtual_h5PageId;
        this.status = status;
        this.loadFail = z10;
        this.pageRandomIdByGAID = pageRandomIdByGAID;
        this.pageChainContext = pageChainContext;
        this.isRedirect = z11;
        this.progressCollectList = progressCollectList;
        this.progressCurrentStep = progressStep;
        this.progressStartTime = j11;
    }

    public /* synthetic */ ShowPageData(String str, String str2, String str3, String str4, ShowPageStatus showPageStatus, boolean z10, String str5, PageChainContext pageChainContext, boolean z11, ConcurrentHashMap concurrentHashMap, MiniAppH5BaseFragment.ProgressStep progressStep, long j11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i11 & 16) != 0 ? ShowPageStatus.SHOULDOVERRIDEURKLOADING : showPageStatus, (i11 & 32) != 0 ? false : z10, (i11 & 64) != 0 ? "" : str5, (i11 & 128) != 0 ? null : pageChainContext, (i11 & 256) != 0 ? false : z11, (i11 & 512) != 0 ? new ConcurrentHashMap() : concurrentHashMap, (i11 & 1024) != 0 ? null : progressStep, (i11 & 2048) != 0 ? System.currentTimeMillis() : j11);
    }

    public final String component1() {
        return this.originalUrl;
    }

    public final ConcurrentHashMap<Integer, Long> component10() {
        return this.progressCollectList;
    }

    public final MiniAppH5BaseFragment.ProgressStep component11() {
        return this.progressCurrentStep;
    }

    public final long component12() {
        return this.progressStartTime;
    }

    public final String component2() {
        return this.url;
    }

    public final String component3() {
        return this.requestUrl;
    }

    public final String component4() {
        return this.virtual_h5PageId;
    }

    public final ShowPageStatus component5() {
        return this.status;
    }

    public final boolean component6() {
        return this.loadFail;
    }

    public final String component7() {
        return this.pageRandomIdByGAID;
    }

    public final PageChainContext component8() {
        return this.pageChainContext;
    }

    public final boolean component9() {
        return this.isRedirect;
    }

    public final ShowPageData copy(String originalUrl, String url, String requestUrl, String virtual_h5PageId, ShowPageStatus status, boolean z10, String pageRandomIdByGAID, PageChainContext pageChainContext, boolean z11, ConcurrentHashMap<Integer, Long> progressCollectList, MiniAppH5BaseFragment.ProgressStep progressStep, long j11) {
        Intrinsics.h(originalUrl, "originalUrl");
        Intrinsics.h(url, "url");
        Intrinsics.h(requestUrl, "requestUrl");
        Intrinsics.h(virtual_h5PageId, "virtual_h5PageId");
        Intrinsics.h(status, "status");
        Intrinsics.h(pageRandomIdByGAID, "pageRandomIdByGAID");
        Intrinsics.h(progressCollectList, "progressCollectList");
        return new ShowPageData(originalUrl, url, requestUrl, virtual_h5PageId, status, z10, pageRandomIdByGAID, pageChainContext, z11, progressCollectList, progressStep, j11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShowPageData)) {
            return false;
        }
        ShowPageData showPageData = (ShowPageData) obj;
        return Intrinsics.c(this.originalUrl, showPageData.originalUrl) && Intrinsics.c(this.url, showPageData.url) && Intrinsics.c(this.requestUrl, showPageData.requestUrl) && Intrinsics.c(this.virtual_h5PageId, showPageData.virtual_h5PageId) && this.status == showPageData.status && this.loadFail == showPageData.loadFail && Intrinsics.c(this.pageRandomIdByGAID, showPageData.pageRandomIdByGAID) && Intrinsics.c(this.pageChainContext, showPageData.pageChainContext) && this.isRedirect == showPageData.isRedirect && Intrinsics.c(this.progressCollectList, showPageData.progressCollectList) && this.progressCurrentStep == showPageData.progressCurrentStep && this.progressStartTime == showPageData.progressStartTime;
    }

    public final boolean getLoadFail() {
        return this.loadFail;
    }

    public final String getOriginalUrl() {
        return this.originalUrl;
    }

    public final PageChainContext getPageChainContext() {
        return this.pageChainContext;
    }

    public final String getPageRandomIdByGAID() {
        return this.pageRandomIdByGAID;
    }

    public final ConcurrentHashMap<Integer, Long> getProgressCollectList() {
        return this.progressCollectList;
    }

    public final MiniAppH5BaseFragment.ProgressStep getProgressCurrentStep() {
        return this.progressCurrentStep;
    }

    public final long getProgressStartTime() {
        return this.progressStartTime;
    }

    public final String getRequestUrl() {
        return this.requestUrl;
    }

    public final ShowPageStatus getStatus() {
        return this.status;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getVirtual_h5PageId() {
        return this.virtual_h5PageId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v16, types: [int] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v9, types: [int] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iHashCode = (this.status.hashCode() + ((this.virtual_h5PageId.hashCode() + ((this.requestUrl.hashCode() + ((this.url.hashCode() + (this.originalUrl.hashCode() * 31)) * 31)) * 31)) * 31)) * 31;
        boolean z10 = this.loadFail;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int iHashCode2 = (this.pageRandomIdByGAID.hashCode() + ((iHashCode + r11) * 31)) * 31;
        PageChainContext pageChainContext = this.pageChainContext;
        int iHashCode3 = (iHashCode2 + (pageChainContext == null ? 0 : pageChainContext.hashCode())) * 31;
        boolean z11 = this.isRedirect;
        int iHashCode4 = (this.progressCollectList.hashCode() + ((iHashCode3 + (z11 ? 1 : z11)) * 31)) * 31;
        MiniAppH5BaseFragment.ProgressStep progressStep = this.progressCurrentStep;
        return s.a(this.progressStartTime) + ((iHashCode4 + (progressStep != null ? progressStep.hashCode() : 0)) * 31);
    }

    public final boolean isRedirect() {
        return this.isRedirect;
    }

    public final void setLoadFail(boolean z10) {
        this.loadFail = z10;
    }

    public final void setOriginalUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.originalUrl = str;
    }

    public final void setPageChainContext(PageChainContext pageChainContext) {
        this.pageChainContext = pageChainContext;
    }

    public final void setPageRandomIdByGAID(String str) {
        Intrinsics.h(str, "<set-?>");
        this.pageRandomIdByGAID = str;
    }

    public final void setProgressCollectList(ConcurrentHashMap<Integer, Long> concurrentHashMap) {
        Intrinsics.h(concurrentHashMap, "<set-?>");
        this.progressCollectList = concurrentHashMap;
    }

    public final void setProgressCurrentStep(MiniAppH5BaseFragment.ProgressStep progressStep) {
        this.progressCurrentStep = progressStep;
    }

    public final void setProgressStartTime(long j11) {
        this.progressStartTime = j11;
    }

    public final void setRedirect(boolean z10) {
        this.isRedirect = z10;
    }

    public final void setRequestUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.requestUrl = str;
    }

    public final void setStatus(ShowPageStatus showPageStatus) {
        Intrinsics.h(showPageStatus, "<set-?>");
        this.status = showPageStatus;
    }

    public final void setUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.url = str;
    }

    public final void setVirtual_h5PageId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.virtual_h5PageId = str;
    }

    public String toString() {
        return "ShowPageData(originalUrl=" + this.originalUrl + ", url=" + this.url + ", requestUrl=" + this.requestUrl + ", virtual_h5PageId=" + this.virtual_h5PageId + ", status=" + this.status + ", loadFail=" + this.loadFail + ", pageRandomIdByGAID=" + this.pageRandomIdByGAID + ", pageChainContext=" + this.pageChainContext + ", isRedirect=" + this.isRedirect + ", progressCollectList=" + this.progressCollectList + ", progressCurrentStep=" + this.progressCurrentStep + ", progressStartTime=" + this.progressStartTime + ")";
    }
}
