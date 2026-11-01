package androidx.compose.ui.semantics;

import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public abstract class SemanticsPropertiesKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ KProperty[] f5948a = {Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "stateDescription", "getStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "progressBarRangeInfo", "getProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ProgressBarRangeInfo;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "paneTitle", "getPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "liveRegion", "getLiveRegion(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "focused", "getFocused(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isContainer", "isContainer(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isTraversalGroup", "isTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "contentType", "getContentType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/autofill/ContentType;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "contentDataType", "getContentDataType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "traversalIndex", "getTraversalIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)F", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "horizontalScrollAxisRange", "getHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "verticalScrollAxisRange", "getVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "role", "getRole(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "testTag", "getTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "textSubstitution", "getTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isShowingTextSubstitution", "isShowingTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "editableText", "getEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "textSelectionRange", "getTextSelectionRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)J", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "imeAction", "getImeAction(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "selected", "getSelected(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "collectionInfo", "getCollectionInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionInfo;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "collectionItemInfo", "getCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionItemInfo;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "toggleableState", "getToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/state/ToggleableState;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isEditable", "isEditable(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "maxTextLength", "getMaxTextLength(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "customActions", "getCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/util/List;", 1))};

    static {
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        semanticsProperties.A();
        semanticsProperties.w();
        semanticsProperties.u();
        semanticsProperties.s();
        semanticsProperties.i();
        semanticsProperties.r();
        semanticsProperties.r();
        semanticsProperties.e();
        semanticsProperties.c();
        semanticsProperties.G();
        semanticsProperties.k();
        semanticsProperties.H();
        semanticsProperties.x();
        semanticsProperties.B();
        semanticsProperties.E();
        semanticsProperties.q();
        semanticsProperties.g();
        semanticsProperties.D();
        semanticsProperties.l();
        semanticsProperties.z();
        semanticsProperties.a();
        semanticsProperties.b();
        semanticsProperties.F();
        semanticsProperties.p();
        semanticsProperties.t();
        h.f5976a.d();
    }

    public static final void A(n nVar, e eVar) {
        SemanticsProperties.f5919a.w().d(nVar, f5948a[1], eVar);
    }

    public static final void B(n nVar, int i11) {
        SemanticsProperties.f5919a.x().d(nVar, f5948a[12], f.h(i11));
    }

    public static final void C(n nVar, boolean z10) {
        SemanticsProperties.f5919a.z().d(nVar, f5948a[19], Boolean.valueOf(z10));
    }

    public static final void D(n nVar, boolean z10) {
        SemanticsProperties.f5919a.q().d(nVar, f5948a[15], Boolean.valueOf(z10));
    }

    public static final void E(n nVar, AnnotatedString annotatedString) {
        nVar.a(SemanticsProperties.f5919a.C(), CollectionsKt.e(annotatedString));
    }

    public static final void F(n nVar, AnnotatedString annotatedString) {
        SemanticsProperties.f5919a.E().d(nVar, f5948a[14], annotatedString);
    }

    public static final void G(n nVar, String str, Function1 function1) {
        nVar.a(h.f5976a.y(), new a(str, function1));
    }

    public static /* synthetic */ void H(n nVar, String str, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        G(nVar, str, function1);
    }

    public static final void I(n nVar, ToggleableState toggleableState) {
        SemanticsProperties.f5919a.F().d(nVar, f5948a[22], toggleableState);
    }

    public static final void J(n nVar, boolean z10) {
        SemanticsProperties.f5919a.r().d(nVar, f5948a[6], Boolean.valueOf(z10));
    }

    public static final void K(n nVar, g gVar) {
        SemanticsProperties.f5919a.H().d(nVar, f5948a[11], gVar);
    }

    public static final void L(n nVar, String str, Function1 function1) {
        nVar.a(h.f5976a.z(), new a(str, function1));
    }

    public static /* synthetic */ void M(n nVar, String str, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        L(nVar, str, function1);
    }

    public static final SemanticsPropertyKey a(String str) {
        return new SemanticsPropertyKey(str, true);
    }

    public static final SemanticsPropertyKey b(String str, Function2 function2) {
        return new SemanticsPropertyKey(str, true, function2);
    }

    public static final void c(n nVar, String str, Function0 function0) {
        nVar.a(h.f5976a.a(), new a(str, function0));
    }

    public static /* synthetic */ void d(n nVar, String str, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        c(nVar, str, function0);
    }

    public static final void e(n nVar) {
        nVar.a(SemanticsProperties.f5919a.o(), Unit.f67061a);
    }

    public static final void f(n nVar) {
        nVar.a(SemanticsProperties.f5919a.f(), Unit.f67061a);
    }

    public static final void g(n nVar, String str, final Function0 function0) {
        nVar.a(h.f5976a.h(), new a(str, new Function1<List<Float>, Boolean>() { // from class: androidx.compose.ui.semantics.SemanticsPropertiesKt$getScrollViewportLength$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(List<Float> list) {
                boolean z10;
                Float f11 = (Float) function0.invoke();
                if (f11 == null) {
                    z10 = false;
                } else {
                    list.add(f11);
                    z10 = true;
                }
                return Boolean.valueOf(z10);
            }
        }));
    }

    public static /* synthetic */ void h(n nVar, String str, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        g(nVar, str, function0);
    }

    public static final void i(n nVar, String str, Function1 function1) {
        nVar.a(h.f5976a.i(), new a(str, function1));
    }

    public static /* synthetic */ void j(n nVar, String str, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        i(nVar, str, function1);
    }

    public static final void k(n nVar, Function1 function1) {
        nVar.a(SemanticsProperties.f5919a.m(), function1);
    }

    public static final void l(n nVar, String str, Function0 function0) {
        nVar.a(h.f5976a.j(), new a(str, function0));
    }

    public static final void m(n nVar, String str, Function0 function0) {
        nVar.a(h.f5976a.l(), new a(str, function0));
    }

    public static final void n(n nVar, String str, Function0 function0) {
        nVar.a(h.f5976a.r(), new a(str, function0));
    }

    public static /* synthetic */ void o(n nVar, String str, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        n(nVar, str, function0);
    }

    public static final void p(n nVar, String str, Function2 function2) {
        nVar.a(h.f5976a.s(), new a(str, function2));
    }

    public static /* synthetic */ void q(n nVar, String str, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        p(nVar, str, function2);
    }

    public static final void r(n nVar, Function2 function2) {
        nVar.a(h.f5976a.t(), function2);
    }

    public static final void s(n nVar, String str, Function1 function1) {
        nVar.a(h.f5976a.u(), new a(str, function1));
    }

    public static /* synthetic */ void t(n nVar, String str, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        s(nVar, str, function1);
    }

    public static final void u(n nVar, b bVar) {
        SemanticsProperties.f5919a.a().d(nVar, f5948a[20], bVar);
    }

    public static final void v(n nVar, String str) {
        nVar.a(SemanticsProperties.f5919a.d(), CollectionsKt.e(str));
    }

    public static final void w(n nVar, boolean z10) {
        SemanticsProperties.f5919a.i().d(nVar, f5948a[4], Boolean.valueOf(z10));
    }

    public static final void x(n nVar, g gVar) {
        SemanticsProperties.f5919a.k().d(nVar, f5948a[10], gVar);
    }

    public static final void y(n nVar, String str, Function1 function1) {
        nVar.a(h.f5976a.v(), new a(str, function1));
    }

    public static /* synthetic */ void z(n nVar, String str, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        y(nVar, str, function1);
    }
}
