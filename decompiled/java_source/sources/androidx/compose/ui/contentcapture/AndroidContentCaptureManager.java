package androidx.compose.ui.contentcapture;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.LongSparseArray;
import android.view.View;
import android.view.autofill.AutofillId;
import android.view.translation.TranslationRequestValue;
import android.view.translation.TranslationResponseValue;
import android.view.translation.ViewTranslationRequest;
import android.view.translation.ViewTranslationResponse;
import androidx.collection.e0;
import androidx.collection.f0;
import androidx.collection.o;
import androidx.collection.p;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.x0;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.c2;
import androidx.compose.ui.platform.d2;
import androidx.compose.ui.platform.e2;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.y;
import androidx.compose.ui.text.z;
import androidx.p009lifecycle.u;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.LongIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o0.w;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidContentCaptureManager implements m, androidx.p009lifecycle.f, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AndroidComposeView f4108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Function0 f4109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.compose.ui.platform.coreshims.d f4110c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e0 f4111d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f0 f4112e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.collection.b f4116i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f4120m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private c2 f4122o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f4123p;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f4113f = 100;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TranslateStatus f4114g = TranslateStatus.SHOW_ORIGINAL;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f4115h = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final kotlinx.coroutines.channels.d f4117j = kotlinx.coroutines.channels.g.b(1, null, null, 6, null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Handler f4118k = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private o f4119l = p.a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private e0 f4121n = p.b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Runnable f4124q = new Runnable() { // from class: androidx.compose.ui.contentcapture.a
        @Override // java.lang.Runnable
        public final void run() {
            AndroidContentCaptureManager.g(this.f4126a);
        }
    };

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;", "", "(Ljava/lang/String;I)V", "SHOW_ORIGINAL", "SHOW_TRANSLATED", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private enum TranslateStatus {
        SHOW_ORIGINAL,
        SHOW_TRANSLATED
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f4125a = new a();

        private a() {
        }

        private final void b(AndroidContentCaptureManager androidContentCaptureManager, LongSparseArray longSparseArray) {
            TranslationResponseValue value;
            CharSequence text;
            d2 d2Var;
            SemanticsNode semanticsNodeB;
            androidx.compose.ui.semantics.a aVar;
            Function1 function1;
            LongIterator longIteratorA = androidx.core.util.c.a(longSparseArray);
            while (longIteratorA.hasNext()) {
                long jA = longIteratorA.a();
                ViewTranslationResponse viewTranslationResponseA = i.a(longSparseArray.get(jA));
                if (viewTranslationResponseA != null && (value = viewTranslationResponseA.getValue("android:text")) != null && (text = value.getText()) != null && (d2Var = (d2) androidContentCaptureManager.h().c((int) jA)) != null && (semanticsNodeB = d2Var.b()) != null && (aVar = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(semanticsNodeB.w(), androidx.compose.ui.semantics.h.f5976a.y())) != null && (function1 = (Function1) aVar.a()) != null) {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(AndroidContentCaptureManager androidContentCaptureManager, LongSparseArray longSparseArray) {
            f4125a.b(androidContentCaptureManager, longSparseArray);
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0073  */
        public final void c(AndroidContentCaptureManager androidContentCaptureManager, long[] jArr, int[] iArr, Consumer<ViewTranslationRequest> consumer) {
            SemanticsNode semanticsNodeB;
            String strD;
            for (long j11 : jArr) {
                d2 d2Var = (d2) androidContentCaptureManager.h().c((int) j11);
                if (d2Var != null && (semanticsNodeB = d2Var.b()) != null) {
                    c.a();
                    ViewTranslationRequest.Builder builderA = b.a(androidContentCaptureManager.i().getAutofillId(), semanticsNodeB.o());
                    List list = (List) SemanticsConfigurationKt.a(semanticsNodeB.w(), SemanticsProperties.f5919a.C());
                    if (list != null && (strD = q0.a.d(list, "\n", null, null, 0, null, null, 62, null)) != null) {
                        builderA.setValue("android:text", TranslationRequestValue.forText(new AnnotatedString(strD, null, null, 6, null)));
                        consumer.accept(builderA.build());
                    }
                }
            }
        }

        public final void d(final AndroidContentCaptureManager androidContentCaptureManager, final LongSparseArray<ViewTranslationResponse> longSparseArray) {
            if (Build.VERSION.SDK_INT < 31) {
                return;
            }
            if (Intrinsics.c(Looper.getMainLooper().getThread(), Thread.currentThread())) {
                b(androidContentCaptureManager, longSparseArray);
            } else {
                androidContentCaptureManager.i().post(new Runnable() { // from class: androidx.compose.ui.contentcapture.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidContentCaptureManager.a.e(androidContentCaptureManager, longSparseArray);
                    }
                });
            }
        }
    }

    public AndroidContentCaptureManager(AndroidComposeView androidComposeView, Function0 function0) {
        this.f4108a = androidComposeView;
        this.f4109b = function0;
        int i11 = 0;
        int i12 = 1;
        DefaultConstructorMarker defaultConstructorMarker = null;
        this.f4111d = new e0(i11, i12, defaultConstructorMarker);
        this.f4112e = new f0(i11, i12, defaultConstructorMarker);
        this.f4116i = new androidx.collection.b(i11, i12, defaultConstructorMarker);
        this.f4122o = new c2(androidComposeView.getSemanticsOwner().a(), p.a());
    }

    private final void A(SemanticsNode semanticsNode) {
        if (k()) {
            d(semanticsNode.o());
            List listT = semanticsNode.t();
            int size = listT.size();
            for (int i11 = 0; i11 < size; i11++) {
                A((SemanticsNode) listT.get(i11));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x005d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x005f A[LOOP:0: B:5:0x0017->B:15:0x005f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0062 A[EDGE_INSN: B:19:0x0062->B:16:0x0062 BREAK  A[LOOP:0: B:5:0x0017->B:15:0x005f], SYNTHETIC] */
    private final void B() {
        this.f4121n.i();
        o oVarH = h();
        int[] iArr = oVarH.f2304b;
        Object[] objArr = oVarH.f2305c;
        long[] jArr = oVarH.f2303a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j11 = jArr[i11];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i11 != length) {
                        break;
                        break;
                    }
                    i11++;
                } else {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j11) < 128) {
                            int i14 = (i11 << 3) + i13;
                            this.f4121n.t(iArr[i14], new c2(((d2) objArr[i14]).b(), h()));
                        }
                        j11 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    } else if (i11 != length) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
        }
        this.f4122o = new c2(this.f4108a.getSemanticsOwner().a(), h());
    }

    private final void C(SemanticsNode semanticsNode) {
        androidx.compose.ui.semantics.a aVar;
        Function1 function1;
        Function1 function2;
        androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
        Boolean bool = (Boolean) SemanticsConfigurationKt.a(iVarW, SemanticsProperties.f5919a.q());
        if (this.f4114g == TranslateStatus.SHOW_ORIGINAL && Intrinsics.c(bool, Boolean.TRUE)) {
            androidx.compose.ui.semantics.a aVar2 = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(iVarW, androidx.compose.ui.semantics.h.f5976a.z());
            if (aVar2 == null || (function2 = (Function1) aVar2.a()) == null) {
                return;
            }
            return;
        }
        if (this.f4114g != TranslateStatus.SHOW_TRANSLATED || !Intrinsics.c(bool, Boolean.FALSE) || (aVar = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(iVarW, androidx.compose.ui.semantics.h.f5976a.z())) == null || (function1 = (Function1) aVar.a()) == null) {
            return;
        }
    }

    private final void c(int i11, androidx.compose.ui.platform.coreshims.f fVar) {
        if (fVar == null) {
            return;
        }
        if (this.f4112e.a(i11)) {
            this.f4112e.q(i11);
        } else {
            this.f4111d.t(i11, fVar);
        }
    }

    private final void d(int i11) {
        if (this.f4111d.b(i11)) {
            this.f4111d.q(i11);
        } else {
            this.f4112e.f(i11);
        }
    }

    private final void e(o oVar) {
        int i11;
        int[] iArr = oVar.f2304b;
        long[] jArr = oVar.f2303a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i12 = 0;
        while (true) {
            long j11 = jArr[i12];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i13 = 8;
                int i14 = 8 - ((~(i12 - length)) >>> 31);
                int i15 = 0;
                while (i15 < i14) {
                    if ((255 & j11) < 128) {
                        int i16 = iArr[(i12 << 3) + i15];
                        c2 c2Var = (c2) this.f4121n.c(i16);
                        d2 d2Var = (d2) oVar.c(i16);
                        SemanticsNode semanticsNodeB = d2Var != null ? d2Var.b() : null;
                        if (semanticsNodeB == null) {
                            g0.a.c("no value for specified key");
                            throw new KotlinNothingValueException();
                        }
                        if (c2Var == null) {
                            Iterator it = semanticsNodeB.w().iterator();
                            while (it.hasNext()) {
                                Object key = ((Map.Entry) it.next()).getKey();
                                SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
                                if (Intrinsics.c(key, semanticsProperties.C())) {
                                    List list = (List) SemanticsConfigurationKt.a(semanticsNodeB.w(), semanticsProperties.C());
                                    v(semanticsNodeB.o(), String.valueOf(list != null ? (AnnotatedString) CollectionsKt.k0(list) : null));
                                }
                            }
                        } else {
                            Iterator it2 = semanticsNodeB.w().iterator();
                            while (it2.hasNext()) {
                                SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) ((Map.Entry) it2.next()).getKey();
                                SemanticsProperties semanticsProperties2 = SemanticsProperties.f5919a;
                                if (Intrinsics.c(semanticsPropertyKey, semanticsProperties2.C())) {
                                    List list2 = (List) SemanticsConfigurationKt.a(c2Var.b(), semanticsProperties2.C());
                                    AnnotatedString annotatedString = list2 != null ? (AnnotatedString) CollectionsKt.k0(list2) : null;
                                    List list3 = (List) SemanticsConfigurationKt.a(semanticsNodeB.w(), semanticsProperties2.C());
                                    AnnotatedString annotatedString2 = list3 != null ? (AnnotatedString) CollectionsKt.k0(list3) : null;
                                    if (!Intrinsics.c(annotatedString, annotatedString2)) {
                                        v(semanticsNodeB.o(), String.valueOf(annotatedString2));
                                    }
                                }
                            }
                        }
                        i11 = 8;
                    } else {
                        i11 = i13;
                    }
                    j11 >>= i11;
                    i15++;
                    i13 = i11;
                }
                if (i14 != i13) {
                    return;
                }
            }
            if (i12 == length) {
                return;
            } else {
                i12++;
            }
        }
    }

    private final void f() {
        androidx.compose.ui.semantics.a aVar;
        Function0 function0;
        o oVarH = h();
        Object[] objArr = oVarH.f2305c;
        long[] jArr = oVarH.f2303a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            long j11 = jArr[i11];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - ((~(i11 - length)) >>> 31);
                for (int i13 = 0; i13 < i12; i13++) {
                    if ((255 & j11) < 128) {
                        androidx.compose.ui.semantics.i iVarW = ((d2) objArr[(i11 << 3) + i13]).b().w();
                        if (SemanticsConfigurationKt.a(iVarW, SemanticsProperties.f5919a.q()) != null && (aVar = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(iVarW, androidx.compose.ui.semantics.h.f5976a.a())) != null && (function0 = (Function0) aVar.a()) != null) {
                        }
                    }
                    j11 >>= 8;
                }
                if (i12 != 8) {
                    return;
                }
            }
            if (i11 == length) {
                return;
            } else {
                i11++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(AndroidContentCaptureManager androidContentCaptureManager) {
        if (androidContentCaptureManager.k()) {
            x0.c(androidContentCaptureManager.f4108a, false, 1, null);
            androidContentCaptureManager.w(androidContentCaptureManager.f4108a.getSemanticsOwner().a(), androidContentCaptureManager.f4122o);
            androidContentCaptureManager.u(androidContentCaptureManager.f4108a.getSemanticsOwner().a(), androidContentCaptureManager.f4122o);
            androidContentCaptureManager.e(androidContentCaptureManager.h());
            androidContentCaptureManager.B();
            androidContentCaptureManager.f4123p = false;
        }
    }

    private final void j() {
        androidx.compose.ui.semantics.a aVar;
        Function1 function1;
        o oVarH = h();
        Object[] objArr = oVarH.f2305c;
        long[] jArr = oVarH.f2303a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            long j11 = jArr[i11];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - ((~(i11 - length)) >>> 31);
                for (int i13 = 0; i13 < i12; i13++) {
                    if ((255 & j11) < 128) {
                        androidx.compose.ui.semantics.i iVarW = ((d2) objArr[(i11 << 3) + i13]).b().w();
                        if (Intrinsics.c(SemanticsConfigurationKt.a(iVarW, SemanticsProperties.f5919a.q()), Boolean.TRUE) && (aVar = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(iVarW, androidx.compose.ui.semantics.h.f5976a.z())) != null && (function1 = (Function1) aVar.a()) != null) {
                        }
                    }
                    j11 >>= 8;
                }
                if (i12 != 8) {
                    return;
                }
            }
            if (i11 == length) {
                return;
            } else {
                i11++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0064 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x0066 A[LOOP:0: B:13:0x0031->B:23:0x0066, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x006d A[EDGE_INSN: B:53:0x006d->B:24:0x006d BREAK  A[LOOP:0: B:13:0x0031->B:23:0x0066], SYNTHETIC] */
    private final void l() {
        androidx.compose.ui.platform.coreshims.d dVar = this.f4110c;
        if (dVar != null && Build.VERSION.SDK_INT >= 29) {
            long j11 = 255;
            char c11 = 7;
            if (this.f4111d.g()) {
                ArrayList arrayList = new ArrayList();
                e0 e0Var = this.f4111d;
                Object[] objArr = e0Var.f2305c;
                long[] jArr = e0Var.f2303a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i11 = 0;
                    while (true) {
                        long j12 = jArr[i11];
                        long[] jArr2 = jArr;
                        if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i12 = 8 - ((~(i11 - length)) >>> 31);
                            int i13 = 0;
                            while (i13 < i12) {
                                if ((j12 & j11) < 128) {
                                    arrayList.add((androidx.compose.ui.platform.coreshims.f) objArr[(i11 << 3) + i13]);
                                }
                                j12 >>= 8;
                                i13++;
                                j11 = 255;
                            }
                            if (i12 != 8) {
                                break;
                            }
                            if (i11 != length) {
                                break;
                            }
                            i11++;
                            jArr = jArr2;
                            j11 = 255;
                        } else if (i11 != length) {
                            break;
                            break;
                        } else {
                            i11++;
                            jArr = jArr2;
                            j11 = 255;
                        }
                    }
                }
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                int size = arrayList.size();
                for (int i14 = 0; i14 < size; i14++) {
                    arrayList2.add(((androidx.compose.ui.platform.coreshims.f) arrayList.get(i14)).h());
                }
                dVar.d(arrayList2);
                this.f4111d.i();
            }
            if (this.f4112e.c()) {
                ArrayList arrayList3 = new ArrayList();
                f0 f0Var = this.f4112e;
                int[] iArr = f0Var.f2320b;
                long[] jArr3 = f0Var.f2319a;
                int length2 = jArr3.length - 2;
                if (length2 >= 0) {
                    int i15 = 0;
                    while (true) {
                        long j13 = jArr3[i15];
                        if ((((~j13) << c11) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i16 = 8 - ((~(i15 - length2)) >>> 31);
                            for (int i17 = 0; i17 < i16; i17++) {
                                if ((j13 & 255) < 128) {
                                    arrayList3.add(Integer.valueOf(iArr[(i15 << 3) + i17]));
                                }
                                j13 >>= 8;
                            }
                            if (i16 != 8) {
                                break;
                            }
                        }
                        if (i15 == length2) {
                            break;
                        }
                        i15++;
                        c11 = 7;
                    }
                }
                ArrayList arrayList4 = new ArrayList(arrayList3.size());
                int size2 = arrayList3.size();
                for (int i18 = 0; i18 < size2; i18++) {
                    arrayList4.add(Long.valueOf(((Number) arrayList3.get(i18)).intValue()));
                }
                dVar.e(CollectionsKt.S0(arrayList4));
                this.f4112e.h();
            }
        }
    }

    private final void m(LayoutNode layoutNode) {
        if (this.f4116i.add(layoutNode)) {
            this.f4117j.c(Unit.f67061a);
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x007d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x007f A[LOOP:1: B:13:0x0040->B:25:0x007f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:44:0x0082 A[EDGE_INSN: B:44:0x0082->B:26:0x0082 BREAK  A[LOOP:1: B:13:0x0040->B:25:0x007f], SYNTHETIC] */
    private final void u(SemanticsNode semanticsNode, c2 c2Var) {
        List listT = semanticsNode.t();
        int size = listT.size();
        for (int i11 = 0; i11 < size; i11++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) listT.get(i11);
            if (h().a(semanticsNode2.o()) && !c2Var.a().a(semanticsNode2.o())) {
                z(semanticsNode2);
            }
        }
        e0 e0Var = this.f4121n;
        int[] iArr = e0Var.f2304b;
        long[] jArr = e0Var.f2303a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i12 = 0;
            while (true) {
                long j11 = jArr[i12];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i12 != length) {
                        break;
                        break;
                    }
                    i12++;
                } else {
                    int i13 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j11) < 128) {
                            int i15 = iArr[(i12 << 3) + i14];
                            if (!h().a(i15)) {
                                d(i15);
                            }
                        }
                        j11 >>= 8;
                    }
                    if (i13 != 8) {
                        break;
                    } else if (i12 != length) {
                        break;
                    } else {
                        i12++;
                    }
                }
            }
        }
        List listT2 = semanticsNode.t();
        int size2 = listT2.size();
        for (int i16 = 0; i16 < size2; i16++) {
            SemanticsNode semanticsNode3 = (SemanticsNode) listT2.get(i16);
            if (h().a(semanticsNode3.o()) && this.f4121n.a(semanticsNode3.o())) {
                Object objC = this.f4121n.c(semanticsNode3.o());
                if (objC == null) {
                    g0.a.c("node not present in pruned tree before this change");
                    throw new KotlinNothingValueException();
                }
                u(semanticsNode3, (c2) objC);
            }
        }
    }

    private final void v(int i11, String str) {
        androidx.compose.ui.platform.coreshims.d dVar;
        if (Build.VERSION.SDK_INT >= 29 && (dVar = this.f4110c) != null) {
            AutofillId autofillIdA = dVar.a(i11);
            if (autofillIdA != null) {
                dVar.c(autofillIdA, str);
            } else {
                g0.a.c("Invalid content capture ID");
                throw new KotlinNothingValueException();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0095 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0097 A[LOOP:1: B:15:0x0057->B:28:0x0097, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:46:0x009a A[EDGE_INSN: B:46:0x009a->B:29:0x009a BREAK  A[LOOP:1: B:15:0x0057->B:28:0x0097], SYNTHETIC] */
    private final void w(SemanticsNode semanticsNode, c2 c2Var) {
        int i11 = 0;
        f0 f0Var = new f0(i11, 1, null);
        List listT = semanticsNode.t();
        int size = listT.size();
        for (int i12 = 0; i12 < size; i12++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) listT.get(i12);
            if (h().a(semanticsNode2.o())) {
                if (!c2Var.a().a(semanticsNode2.o())) {
                    m(semanticsNode.q());
                    return;
                }
                f0Var.f(semanticsNode2.o());
            }
        }
        f0 f0VarA = c2Var.a();
        int[] iArr = f0VarA.f2320b;
        long[] jArr = f0VarA.f2319a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i13 = 0;
            while (true) {
                long j11 = jArr[i13];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i13 != length) {
                        break;
                        break;
                    }
                    i13++;
                } else {
                    int i14 = 8 - ((~(i13 - length)) >>> 31);
                    for (int i15 = 0; i15 < i14; i15++) {
                        if ((255 & j11) < 128 && !f0Var.a(iArr[(i13 << 3) + i15])) {
                            m(semanticsNode.q());
                            return;
                        }
                        j11 >>= 8;
                    }
                    if (i14 != 8) {
                        break;
                    } else if (i13 != length) {
                        break;
                    } else {
                        i13++;
                    }
                }
            }
        }
        List listT2 = semanticsNode.t();
        int size2 = listT2.size();
        while (i11 < size2) {
            SemanticsNode semanticsNode3 = (SemanticsNode) listT2.get(i11);
            if (h().a(semanticsNode3.o())) {
                Object objC = this.f4121n.c(semanticsNode3.o());
                if (objC == null) {
                    g0.a.c("node not present in pruned tree before this change");
                    throw new KotlinNothingValueException();
                }
                w(semanticsNode3, (c2) objC);
            }
            i11++;
        }
    }

    private final void x() {
        androidx.compose.ui.semantics.a aVar;
        Function1 function1;
        o oVarH = h();
        Object[] objArr = oVarH.f2305c;
        long[] jArr = oVarH.f2303a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            long j11 = jArr[i11];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - ((~(i11 - length)) >>> 31);
                for (int i13 = 0; i13 < i12; i13++) {
                    if ((255 & j11) < 128) {
                        androidx.compose.ui.semantics.i iVarW = ((d2) objArr[(i11 << 3) + i13]).b().w();
                        if (Intrinsics.c(SemanticsConfigurationKt.a(iVarW, SemanticsProperties.f5919a.q()), Boolean.FALSE) && (aVar = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(iVarW, androidx.compose.ui.semantics.h.f5976a.z())) != null && (function1 = (Function1) aVar.a()) != null) {
                        }
                    }
                    j11 >>= 8;
                }
                if (i12 != 8) {
                    return;
                }
            }
            if (i11 == length) {
                return;
            } else {
                i11++;
            }
        }
    }

    private final androidx.compose.ui.platform.coreshims.f y(SemanticsNode semanticsNode) {
        androidx.compose.ui.platform.coreshims.b bVarA;
        AutofillId autofillIdA;
        String strH;
        androidx.compose.ui.platform.coreshims.d dVar = this.f4110c;
        if (dVar == null || Build.VERSION.SDK_INT < 29 || (bVarA = androidx.compose.ui.platform.coreshims.e.a(this.f4108a)) == null) {
            return null;
        }
        SemanticsNode semanticsNodeR = semanticsNode.r();
        if (semanticsNodeR != null) {
            autofillIdA = dVar.a(semanticsNodeR.o());
            if (autofillIdA == null) {
                return null;
            }
        } else {
            autofillIdA = bVarA.a();
        }
        androidx.compose.ui.platform.coreshims.f fVarB = dVar.b(autofillIdA, semanticsNode.o());
        if (fVarB == null) {
            return null;
        }
        androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        if (iVarW.e(semanticsProperties.v())) {
            return null;
        }
        Bundle bundleA = fVarB.a();
        if (bundleA != null) {
            bundleA.putLong("android.view.contentcapture.EventTimestamp", this.f4120m);
        }
        String str = (String) SemanticsConfigurationKt.a(iVarW, semanticsProperties.B());
        if (str != null) {
            fVarB.e(semanticsNode.o(), null, null, str);
        }
        List list = (List) SemanticsConfigurationKt.a(iVarW, semanticsProperties.C());
        if (list != null) {
            fVarB.b("android.widget.TextView");
            fVarB.f(q0.a.d(list, "\n", null, null, 0, null, null, 62, null));
        }
        AnnotatedString annotatedString = (AnnotatedString) SemanticsConfigurationKt.a(iVarW, semanticsProperties.g());
        if (annotatedString != null) {
            fVarB.b("android.widget.EditText");
            fVarB.f(annotatedString);
        }
        List list2 = (List) SemanticsConfigurationKt.a(iVarW, semanticsProperties.d());
        if (list2 != null) {
            fVarB.c(q0.a.d(list2, "\n", null, null, 0, null, null, 62, null));
        }
        androidx.compose.ui.semantics.f fVar = (androidx.compose.ui.semantics.f) SemanticsConfigurationKt.a(iVarW, semanticsProperties.x());
        if (fVar != null && (strH = e2.h(fVar.n())) != null) {
            fVarB.b(strH);
        }
        z zVarE = e2.e(iVarW);
        if (zVarE != null) {
            y yVarK = zVarE.k();
            fVarB.g(w.h(yVarK.i().l()) * yVarK.b().getDensity() * yVarK.b().C0(), 0, 0, 0);
        }
        y.i iVarH = semanticsNode.h();
        fVarB.d((int) iVarH.f(), (int) iVarH.i(), 0, 0, (int) iVarH.k(), (int) iVarH.e());
        return fVarB;
    }

    private final void z(SemanticsNode semanticsNode) {
        if (k()) {
            C(semanticsNode);
            c(semanticsNode.o(), y(semanticsNode));
            List listT = semanticsNode.t();
            int size = listT.size();
            for (int i11 = 0; i11 < size; i11++) {
                z((SemanticsNode) listT.get(i11));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0062 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0063  */
    /* JADX WARN: Code duplicated, block: B:31:0x006e A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:13:0x0030, B:25:0x0056, B:29:0x0066, B:31:0x006e, B:33:0x0077, B:34:0x007a, B:36:0x007e, B:37:0x0087, B:20:0x0048), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0077 A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:13:0x0030, B:25:0x0056, B:29:0x0066, B:31:0x006e, B:33:0x0077, B:34:0x007a, B:36:0x007e, B:37:0x0087, B:20:0x0048), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x007e A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:13:0x0030, B:25:0x0056, B:29:0x0066, B:31:0x006e, B:33:0x0077, B:34:0x007a, B:36:0x007e, B:37:0x0087, B:20:0x0048), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x009a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x009b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0098 -> B:14:0x0033). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object b(kotlin.coroutines.Continuation r10) throws java.lang.Throwable {
        /*
            r9 = this;
            boolean r0 = r10 instanceof androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1
            if (r0 == 0) goto L13
            r0 = r10
            androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1 r0 = (androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1 r0 = new androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L4c
            if (r2 == r4) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r2 = r0.L$1
            kotlinx.coroutines.channels.f r2 = (kotlinx.coroutines.channels.f) r2
            java.lang.Object r5 = r0.L$0
            androidx.compose.ui.contentcapture.AndroidContentCaptureManager r5 = (androidx.compose.ui.contentcapture.AndroidContentCaptureManager) r5
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L35
        L33:
            r10 = r2
            goto L56
        L35:
            r10 = move-exception
            goto La5
        L38:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L40:
            java.lang.Object r2 = r0.L$1
            kotlinx.coroutines.channels.f r2 = (kotlinx.coroutines.channels.f) r2
            java.lang.Object r5 = r0.L$0
            androidx.compose.ui.contentcapture.AndroidContentCaptureManager r5 = (androidx.compose.ui.contentcapture.AndroidContentCaptureManager) r5
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L35
            goto L66
        L4c:
            kotlin.ResultKt.b(r10)
            kotlinx.coroutines.channels.d r10 = r9.f4117j     // Catch: java.lang.Throwable -> La3
            kotlinx.coroutines.channels.f r10 = r10.iterator()     // Catch: java.lang.Throwable -> La3
            r5 = r9
        L56:
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L35
            r0.L$1 = r10     // Catch: java.lang.Throwable -> L35
            r0.label = r4     // Catch: java.lang.Throwable -> L35
            java.lang.Object r2 = r10.a(r0)     // Catch: java.lang.Throwable -> L35
            if (r2 != r1) goto L63
            return r1
        L63:
            r8 = r2
            r2 = r10
            r10 = r8
        L66:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L35
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r10 == 0) goto L9b
            r2.next()     // Catch: java.lang.Throwable -> L35
            boolean r10 = r5.k()     // Catch: java.lang.Throwable -> L35
            if (r10 == 0) goto L7a
            r5.l()     // Catch: java.lang.Throwable -> L35
        L7a:
            boolean r10 = r5.f4123p     // Catch: java.lang.Throwable -> L35
            if (r10 != 0) goto L87
            r5.f4123p = r4     // Catch: java.lang.Throwable -> L35
            android.os.Handler r10 = r5.f4118k     // Catch: java.lang.Throwable -> L35
            java.lang.Runnable r6 = r5.f4124q     // Catch: java.lang.Throwable -> L35
            r10.post(r6)     // Catch: java.lang.Throwable -> L35
        L87:
            androidx.collection.b r10 = r5.f4116i     // Catch: java.lang.Throwable -> L35
            r10.clear()     // Catch: java.lang.Throwable -> L35
            long r6 = r5.f4113f     // Catch: java.lang.Throwable -> L35
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L35
            r0.L$1 = r2     // Catch: java.lang.Throwable -> L35
            r0.label = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r10 = kotlinx.coroutines.u0.a(r6, r0)     // Catch: java.lang.Throwable -> L35
            if (r10 != r1) goto L33
            return r1
        L9b:
            androidx.collection.b r10 = r5.f4116i
            r10.clear()
            kotlin.Unit r10 = kotlin.Unit.f67061a
            return r10
        La3:
            r10 = move-exception
            r5 = r9
        La5:
            androidx.collection.b r0 = r5.f4116i
            r0.clear()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.contentcapture.AndroidContentCaptureManager.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final o h() {
        if (this.f4115h) {
            this.f4115h = false;
            this.f4119l = e2.b(this.f4108a.getSemanticsOwner());
            this.f4120m = System.currentTimeMillis();
        }
        return this.f4119l;
    }

    public final AndroidComposeView i() {
        return this.f4108a;
    }

    public final boolean k() {
        return m.f4129b1.a() && this.f4110c != null;
    }

    public final void n() {
        this.f4114g = TranslateStatus.SHOW_ORIGINAL;
        f();
    }

    public final void o(long[] jArr, int[] iArr, Consumer consumer) {
        a.f4125a.c(this, jArr, iArr, consumer);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onCreate(u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onDestroy(u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onPause(u uVar) {
        androidx.p009lifecycle.e.c(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onResume(u uVar) {
        androidx.p009lifecycle.e.d(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public void onStart(u uVar) {
        this.f4110c = (androidx.compose.ui.platform.coreshims.d) this.f4109b.invoke();
        z(this.f4108a.getSemanticsOwner().a());
        l();
    }

    @Override // androidx.p009lifecycle.f
    public void onStop(u uVar) {
        A(this.f4108a.getSemanticsOwner().a());
        l();
        this.f4110c = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f4118k.removeCallbacks(this.f4124q);
        this.f4110c = null;
    }

    public final void p() {
        this.f4114g = TranslateStatus.SHOW_ORIGINAL;
        j();
    }

    public final void q(LayoutNode layoutNode) {
        this.f4115h = true;
        if (k()) {
            m(layoutNode);
        }
    }

    public final void r() {
        this.f4115h = true;
        if (!k() || this.f4123p) {
            return;
        }
        this.f4123p = true;
        this.f4118k.post(this.f4124q);
    }

    public final void s() {
        this.f4114g = TranslateStatus.SHOW_TRANSLATED;
        x();
    }

    public final void t(AndroidContentCaptureManager androidContentCaptureManager, LongSparseArray longSparseArray) {
        a.f4125a.d(androidContentCaptureManager, longSparseArray);
    }
}
