package com.transsion.home.bean;

import com.transsion.baselib.report.recent_event.ActionEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.Queue;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\tR\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001e\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010*\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0007\"\u0004\b,\u0010\t¨\u0006-"}, d2 = {"Lcom/transsion/home/bean/TrendingRequestEntity;", "Ljava/io/Serializable;", "<init>", "()V", "page", "", "getPage", "()Ljava/lang/String;", "setPage", "(Ljava/lang/String;)V", "perPage", "", "getPerPage", "()I", "setPerPage", "(I)V", "deepLink", "getDeepLink", "setDeepLink", "sessionId", "getSessionId", "setSessionId", "tabId", "getTabId", "setTabId", "tabCode", "getTabCode", "setTabCode", "latest_events", "Ljava/util/Queue;", "Lcom/transsion/baselib/report/recent_event/ActionEvent;", "getLatest_events", "()Ljava/util/Queue;", "setLatest_events", "(Ljava/util/Queue;)V", "disablePlaylist", "", "getDisablePlaylist", "()Ljava/lang/Boolean;", "setDisablePlaylist", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "grade", "getGrade", "setGrade", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TrendingRequestEntity implements Serializable {
    public static final int $stable = 8;
    private String grade;
    private Queue<ActionEvent> latest_events;
    private String tabCode;
    private String tabId;
    private String page = "1";
    private int perPage = 12;
    private String deepLink = "";
    private String sessionId = "";
    private Boolean disablePlaylist = Boolean.TRUE;

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final Boolean getDisablePlaylist() {
        return this.disablePlaylist;
    }

    public final String getGrade() {
        return this.grade;
    }

    public final Queue<ActionEvent> getLatest_events() {
        return this.latest_events;
    }

    public final String getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final String getTabCode() {
        return this.tabCode;
    }

    public final String getTabId() {
        return this.tabId;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setDisablePlaylist(Boolean bool) {
        this.disablePlaylist = bool;
    }

    public final void setGrade(String str) {
        this.grade = str;
    }

    public final void setLatest_events(Queue<ActionEvent> queue) {
        this.latest_events = queue;
    }

    public final void setPage(String str) {
        Intrinsics.h(str, "<set-?>");
        this.page = str;
    }

    public final void setPerPage(int i11) {
        this.perPage = i11;
    }

    public final void setSessionId(String str) {
        this.sessionId = str;
    }

    public final void setTabCode(String str) {
        this.tabCode = str;
    }

    public final void setTabId(String str) {
        this.tabId = str;
    }
}
