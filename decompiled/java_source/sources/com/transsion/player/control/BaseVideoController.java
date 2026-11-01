package com.transsion.player.control;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.player.p007enum.PipStatus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\f\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB\u001b\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0007\u0010\u000bB#\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0007\u0010\u000eJ\u0015\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0004\b\u0015\u0010\u0016J9\u0010\u001a\u001a\u00020\u00112*\u0010\u0019\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00180\u0017\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ)\u0010\u001a\u001a\u00020\u00112\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00182\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001a\u0010\u001eJ!\u0010\u001f\u001a\u00020\u00112\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0018¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\u0011¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\u0011¢\u0006\u0004\b#\u0010\"JC\u0010&\u001a6\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0018\u0012\u0004\u0012\u00020\u001c0$j\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0018\u0012\u0004\u0012\u00020\u001c`%H\u0016¢\u0006\u0004\b&\u0010'J\u0015\u0010*\u001a\u00020\u00112\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+R$\u0010/\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.RV\u00105\u001a6\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0018\u0012\u0004\u0012\u00020\u001c0$j\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0018\u0012\u0004\u0012\u00020\u001c`%8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u0010'\"\u0004\b3\u00104R,\u0010;\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0018068\u0004X\u0084\u0004¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R$\u0010A\u001a\u0004\u0018\u00018\u00008\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010\u0016¨\u0006B"}, d2 = {"Lcom/transsion/player/control/BaseVideoController;", "Data", "PlayStatus", "Landroid/widget/FrameLayout;", "Lcom/transsion/player/control/c;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/transsion/player/ui/a;", "playerView", "", "setPayerView", "(Lcom/transsion/player/ui/a;)V", "videoData", "setVideoData", "(Ljava/lang/Object;)V", "", "Lcom/transsion/player/control/b;", "component", "addControlComponent", "([Lcom/transsion/player/control/b;)V", "", "isDissociate", "(Lcom/transsion/player/control/b;Z)V", "removeControlComponent", "(Lcom/transsion/player/control/b;)V", "removeAllControlComponent", "()V", "removeAllDissociateComponents", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "getControlComponentMap", "()Ljava/util/LinkedHashMap;", "Lcom/transsion/player/enum/PipStatus;", "pipStatus", "onPipStatusChange", "(Lcom/transsion/player/enum/PipStatus;)V", "Lcom/transsion/player/control/a;", "a", "Lcom/transsion/player/control/a;", "controlWrapper", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/LinkedHashMap;", "getControlComponents", "setControlComponents", "(Ljava/util/LinkedHashMap;)V", "controlComponents", "", "c", "Ljava/util/List;", "getPipStatusVisibilityComponents", "()Ljava/util/List;", "pipStatusVisibilityComponents", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/Object;", "getVideoContentData", "()Ljava/lang/Object;", "setVideoContentData", "videoContentData", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class BaseVideoController<Data, PlayStatus> extends FrameLayout implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private a controlWrapper;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private LinkedHashMap controlComponents;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final List pipStatusVisibilityComponents;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Object videoContentData;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseVideoController(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseVideoController(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseVideoController(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.controlComponents = new LinkedHashMap();
        this.pipStatusVisibilityComponents = new ArrayList();
    }

    public final void addControlComponent(b component, boolean isDissociate) {
        Intrinsics.h(component, "component");
        this.controlComponents.put(component, Boolean.valueOf(isDissociate));
        a aVar = this.controlWrapper;
        if (aVar != null) {
            Intrinsics.e(aVar);
            component.a(aVar);
        }
        View view = component.getView();
        if (view == null || isDissociate) {
            return;
        }
        addView(view, new FrameLayout.LayoutParams(-1, -1));
    }

    public final void addControlComponent(b... component) {
        Intrinsics.h(component, "component");
        for (b bVar : component) {
            addControlComponent(null, false);
        }
    }

    public LinkedHashMap<b, Boolean> getControlComponentMap() {
        return this.controlComponents;
    }

    protected final LinkedHashMap<b, Boolean> getControlComponents() {
        return this.controlComponents;
    }

    protected final List<b> getPipStatusVisibilityComponents() {
        return this.pipStatusVisibilityComponents;
    }

    protected final Data getVideoContentData() {
        return (Data) this.videoContentData;
    }

    public final void onPipStatusChange(PipStatus pipStatus) {
        Intrinsics.h(pipStatus, "pipStatus");
        if (pipStatus == PipStatus.DEFAULT) {
            Iterator it = this.pipStatusVisibilityComponents.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
            return;
        }
        this.pipStatusVisibilityComponents.clear();
        Iterator it2 = this.controlComponents.entrySet().iterator();
        if (it2.hasNext()) {
            Object next = it2.next();
            Intrinsics.g(next, "next(...)");
            Object key = ((Map.Entry) next).getKey();
            Intrinsics.g(key, "component1(...)");
            android.support.v4.media.session.c.a(key);
            throw null;
        }
    }

    public final void removeAllControlComponent() {
        Iterator it = this.controlComponents.entrySet().iterator();
        if (!it.hasNext()) {
            this.controlComponents.clear();
            return;
        }
        Object next = it.next();
        Intrinsics.g(next, "next(...)");
        Object key = ((Map.Entry) next).getKey();
        Intrinsics.g(key, "component1(...)");
        android.support.v4.media.session.c.a(key);
        throw null;
    }

    public final void removeAllDissociateComponents() {
        Iterator it = this.controlComponents.entrySet().iterator();
        while (it.hasNext()) {
            if (((Boolean) ((Map.Entry) it.next()).getValue()).booleanValue()) {
                it.remove();
            }
        }
    }

    public final void removeControlComponent(b component) {
        Intrinsics.h(component, "component");
        removeView(component.getView());
        this.controlComponents.remove(component);
    }

    protected final void setControlComponents(LinkedHashMap<b, Boolean> linkedHashMap) {
        Intrinsics.h(linkedHashMap, "<set-?>");
        this.controlComponents = linkedHashMap;
    }

    public final void setPayerView(com.transsion.player.ui.a playerView) {
        Intrinsics.h(playerView, "playerView");
        this.controlWrapper = new a(playerView, this);
        Iterator it = this.controlComponents.entrySet().iterator();
        if (it.hasNext()) {
            Object next = it.next();
            Intrinsics.g(next, "next(...)");
            Object key = ((Map.Entry) next).getKey();
            Intrinsics.g(key, "component1(...)");
            android.support.v4.media.session.c.a(key);
            Intrinsics.e(this.controlWrapper);
            throw null;
        }
    }

    protected final void setVideoContentData(Data data) {
        this.videoContentData = data;
    }

    public final void setVideoData(Data videoData) {
        this.videoContentData = videoData;
        Iterator it = this.controlComponents.entrySet().iterator();
        if (it.hasNext()) {
            Object next = it.next();
            Intrinsics.g(next, "next(...)");
            Object key = ((Map.Entry) next).getKey();
            Intrinsics.g(key, "component1(...)");
            android.support.v4.media.session.c.a(key);
            throw null;
        }
    }
}
