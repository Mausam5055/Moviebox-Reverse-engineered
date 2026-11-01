package androidx.compose.ui.input.pointer;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B^\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0006\u0012'\u0010\r\u001a#\b\u0001\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\b¢\u0006\u0002\b\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006¢\u0006\f\n\u0004\b \u0010\u001d\u001a\u0004\b!\u0010\u001fR#\u0010\u0007\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R8\u0010\r\u001a#\b\u0001\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\b¢\u0006\u0002\b\f8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)¨\u0006*"}, d2 = {"Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;", "", "key1", "key2", "", "keys", "Lkotlin/Function2;", "Landroidx/compose/ui/input/pointer/e0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "pointerInputHandler", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "j", "()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;", "node", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;)V", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/Object;", "getKey1", "()Ljava/lang/Object;", "c", "getKey2", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "[Ljava/lang/Object;", "getKeys", "()[Ljava/lang/Object;", "e", "Lkotlin/jvm/functions/Function2;", "getPointerInputHandler", "()Lkotlin/jvm/functions/Function2;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SuspendPointerInputElement extends androidx.compose.ui.node.l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Object key1;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Object key2;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Object[] keys;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Function2 pointerInputHandler;

    public SuspendPointerInputElement(Object obj, Object obj2, Object[] objArr, Function2 function2) {
        this.key1 = obj;
        this.key2 = obj2;
        this.keys = objArr;
        this.pointerInputHandler = function2;
    }

    public /* synthetic */ SuspendPointerInputElement(Object obj, Object obj2, Object[] objArr, Function2 function2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : obj, (i11 & 2) != 0 ? null : obj2, (i11 & 4) != 0 ? null : objArr, function2);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SuspendPointerInputElement)) {
            return false;
        }
        SuspendPointerInputElement suspendPointerInputElement = (SuspendPointerInputElement) other;
        if (!Intrinsics.c(this.key1, suspendPointerInputElement.key1) || !Intrinsics.c(this.key2, suspendPointerInputElement.key2)) {
            return false;
        }
        Object[] objArr = this.keys;
        if (objArr != null) {
            Object[] objArr2 = suspendPointerInputElement.keys;
            if (objArr2 == null || !Arrays.equals(objArr, objArr2)) {
                return false;
            }
        } else if (suspendPointerInputElement.keys != null) {
            return false;
        }
        return this.pointerInputHandler == suspendPointerInputElement.pointerInputHandler;
    }

    public int hashCode() {
        Object obj = this.key1;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * 31;
        Object obj2 = this.key2;
        int iHashCode2 = (iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31;
        Object[] objArr = this.keys;
        return ((iHashCode2 + (objArr != null ? Arrays.hashCode(objArr) : 0)) * 31) + this.pointerInputHandler.hashCode();
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public SuspendingPointerInputModifierNodeImpl a() {
        return new SuspendingPointerInputModifierNodeImpl(this.key1, this.key2, this.keys, this.pointerInputHandler);
    }

    @Override // androidx.compose.ui.node.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void i(SuspendingPointerInputModifierNodeImpl node) {
        node.I1(this.key1, this.key2, this.keys, this.pointerInputHandler);
    }
}
