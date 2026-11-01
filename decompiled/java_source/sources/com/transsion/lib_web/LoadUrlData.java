package com.transsion.lib_web;

import androidx.annotation.Keep;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.lib_web.download_render.data.config.ConfigData;
import com.transsion.lib_web.download_render.utils.RenderSource;
import com.transsion.mb.config.manager.ConfigBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gm.i;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import sm.f;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0012\u001a\u00020\u0011J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00112\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/transsion/lib_web/LoadUrlData;", "", "originUrl", "", EventConstants.KEY_SOURCE, "Lcom/transsion/lib_web/download_render/utils/RenderSource;", "<init>", "(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;)V", "getOriginUrl", "()Ljava/lang/String;", "setOriginUrl", "(Ljava/lang/String;)V", "getSource", "()Lcom/transsion/lib_web/download_render/utils/RenderSource;", "setSource", "(Lcom/transsion/lib_web/download_render/utils/RenderSource;)V", "htmlUseRemote", "", "htmlUseRemoteEnable", "component1", "component2", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final /* data */ class LoadUrlData {
    private boolean htmlUseRemote;
    private String originUrl;
    private RenderSource source;

    /* JADX WARN: Code duplicated, block: B:11:0x0031  */
    public LoadUrlData(String originUrl, RenderSource source) {
        String str;
        String value;
        Intrinsics.h(originUrl, "originUrl");
        Intrinsics.h(source, "source");
        this.originUrl = originUrl;
        this.source = source;
        try {
            ConfigBean configBeanD = f.d(f.f75407c.a(), "dr_config", false, 2, null);
            if (configBeanD != null && (value = configBeanD.getValue()) != null) {
                str = StringsKt.q0(value) ? null : value;
                str = str == null ? "{}" : str;
            }
            boolean htmlUseRemote = ((ConfigData) o.d(str, ConfigData.class)).getHtmlUseRemote();
            this.htmlUseRemote = htmlUseRemote;
            i.f63883a.a("DR_Config", "config:" + str + ", htmlUseRemote:" + htmlUseRemote);
        } catch (Throwable unused) {
        }
    }

    public /* synthetic */ LoadUrlData(String str, RenderSource renderSource, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, renderSource);
    }

    public static /* synthetic */ LoadUrlData copy$default(LoadUrlData loadUrlData, String str, RenderSource renderSource, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = loadUrlData.originUrl;
        }
        if ((i11 & 2) != 0) {
            renderSource = loadUrlData.source;
        }
        return loadUrlData.copy(str, renderSource);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOriginUrl() {
        return this.originUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final RenderSource getSource() {
        return this.source;
    }

    public final LoadUrlData copy(String originUrl, RenderSource source) {
        Intrinsics.h(originUrl, "originUrl");
        Intrinsics.h(source, "source");
        return new LoadUrlData(originUrl, source);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LoadUrlData)) {
            return false;
        }
        LoadUrlData loadUrlData = (LoadUrlData) other;
        return Intrinsics.c(this.originUrl, loadUrlData.originUrl) && this.source == loadUrlData.source;
    }

    public final String getOriginUrl() {
        return this.originUrl;
    }

    public final RenderSource getSource() {
        return this.source;
    }

    public int hashCode() {
        return (this.originUrl.hashCode() * 31) + this.source.hashCode();
    }

    /* JADX INFO: renamed from: htmlUseRemoteEnable, reason: from getter */
    public final boolean getHtmlUseRemote() {
        return this.htmlUseRemote;
    }

    public final void setOriginUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.originUrl = str;
    }

    public final void setSource(RenderSource renderSource) {
        Intrinsics.h(renderSource, "<set-?>");
        this.source = renderSource;
    }

    public String toString() {
        return "LoadUrlData(originUrl=" + this.originUrl + ", source=" + this.source + ")";
    }
}
