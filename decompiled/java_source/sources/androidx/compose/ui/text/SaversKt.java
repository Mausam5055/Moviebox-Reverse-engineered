package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.graphics.z4;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SaversKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6040a = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, AnnotatedString, Object>() { // from class: androidx.compose.ui.text.SaversKt$AnnotatedStringSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, AnnotatedString annotatedString) {
            return CollectionsKt.h(SaversKt.x(annotatedString.i()), SaversKt.y(annotatedString.g(), SaversKt.f6041b, eVar), SaversKt.y(annotatedString.e(), SaversKt.f6041b, eVar), SaversKt.y(annotatedString.b(), SaversKt.f6041b, eVar));
        }
    }, new Function1<Object, AnnotatedString>() { // from class: androidx.compose.ui.text.SaversKt$AnnotatedStringSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final AnnotatedString invoke(Object obj) {
            List list;
            List list2;
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list3 = (List) obj;
            Object obj2 = list3.get(1);
            androidx.compose.runtime.saveable.d dVar = SaversKt.f6041b;
            Boolean bool = Boolean.FALSE;
            List list4 = null;
            List list5 = ((!Intrinsics.c(obj2, bool) || (dVar instanceof j)) && obj2 != null) ? (List) dVar.b(obj2) : null;
            Object obj3 = list3.get(2);
            androidx.compose.runtime.saveable.d dVar2 = SaversKt.f6041b;
            List list6 = ((!Intrinsics.c(obj3, bool) || (dVar2 instanceof j)) && obj3 != null) ? (List) dVar2.b(obj3) : null;
            Object obj4 = list3.get(0);
            String str = obj4 != null ? (String) obj4 : null;
            Intrinsics.e(str);
            if (list5 != null) {
                List list7 = list5;
                if (list7.isEmpty()) {
                    list7 = null;
                }
                list = list7;
            } else {
                list = null;
            }
            if (list6 != null) {
                List list8 = list6;
                if (list8.isEmpty()) {
                    list8 = null;
                }
                list2 = list8;
            } else {
                list2 = null;
            }
            Object obj5 = list3.get(3);
            androidx.compose.runtime.saveable.d dVar3 = SaversKt.f6041b;
            if ((!Intrinsics.c(obj5, bool) || (dVar3 instanceof j)) && obj5 != null) {
                list4 = (List) dVar3.b(obj5);
            }
            return new AnnotatedString(str, list, list2, list4);
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6041b = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, List<? extends AnnotatedString.c>, Object>() { // from class: androidx.compose.ui.text.SaversKt$AnnotationRangeListSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, List<? extends AnnotatedString.c> list) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                arrayList.add(SaversKt.y(list.get(i11), SaversKt.f6042c, eVar));
            }
            return arrayList;
        }
    }, new Function1<Object, List<? extends AnnotatedString.c>>() { // from class: androidx.compose.ui.text.SaversKt$AnnotationRangeListSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final List<AnnotatedString.c> invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                Object obj2 = list.get(i11);
                androidx.compose.runtime.saveable.d dVar = SaversKt.f6042c;
                AnnotatedString.c cVar = null;
                if ((!Intrinsics.c(obj2, Boolean.FALSE) || (dVar instanceof j)) && obj2 != null) {
                    cVar = (AnnotatedString.c) dVar.b(obj2);
                }
                Intrinsics.e(cVar);
                arrayList.add(cVar);
            }
            return arrayList;
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6042c = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, AnnotatedString.c, Object>() { // from class: androidx.compose.ui.text.SaversKt$AnnotationRangeSaver$1

        public /* synthetic */ class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f6062a;

            static {
                int[] iArr = new int[AnnotationType.values().length];
                try {
                    iArr[AnnotationType.Paragraph.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[AnnotationType.Span.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[AnnotationType.VerbatimTts.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[AnnotationType.Url.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[AnnotationType.Link.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[AnnotationType.Clickable.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[AnnotationType.String.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                f6062a = iArr;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, AnnotatedString.c cVar) {
            AnnotationType annotationType;
            Object objY;
            Object objE = cVar.e();
            if (objE instanceof r) {
                annotationType = AnnotationType.Paragraph;
            } else if (objE instanceof x) {
                annotationType = AnnotationType.Span;
            } else if (objE instanceof h0) {
                annotationType = AnnotationType.VerbatimTts;
            } else if (objE instanceof g0) {
                annotationType = AnnotationType.Url;
            } else if (objE instanceof f.b) {
                annotationType = AnnotationType.Link;
            } else {
                annotationType = objE instanceof f.a ? AnnotationType.Clickable : AnnotationType.String;
            }
            switch (a.f6062a[annotationType.ordinal()]) {
                case 1:
                    Object objE2 = cVar.e();
                    Intrinsics.f(objE2, "null cannot be cast to non-null type androidx.compose.ui.text.ParagraphStyle");
                    objY = SaversKt.y((r) objE2, SaversKt.i(), eVar);
                    break;
                case 2:
                    Object objE3 = cVar.e();
                    Intrinsics.f(objE3, "null cannot be cast to non-null type androidx.compose.ui.text.SpanStyle");
                    objY = SaversKt.y((x) objE3, SaversKt.v(), eVar);
                    break;
                case 3:
                    Object objE4 = cVar.e();
                    Intrinsics.f(objE4, "null cannot be cast to non-null type androidx.compose.ui.text.VerbatimTtsAnnotation");
                    objY = SaversKt.y((h0) objE4, SaversKt.f6043d, eVar);
                    break;
                case 4:
                    Object objE5 = cVar.e();
                    Intrinsics.f(objE5, "null cannot be cast to non-null type androidx.compose.ui.text.UrlAnnotation");
                    objY = SaversKt.y((g0) objE5, SaversKt.f6044e, eVar);
                    break;
                case 5:
                    Object objE6 = cVar.e();
                    Intrinsics.f(objE6, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Url");
                    objY = SaversKt.y((f.b) objE6, SaversKt.f6045f, eVar);
                    break;
                case 6:
                    Object objE7 = cVar.e();
                    Intrinsics.f(objE7, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Clickable");
                    objY = SaversKt.y((f.a) objE7, SaversKt.f6046g, eVar);
                    break;
                case 7:
                    objY = SaversKt.x(cVar.e());
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            return CollectionsKt.h(SaversKt.x(annotationType), objY, SaversKt.x(Integer.valueOf(cVar.f())), SaversKt.x(Integer.valueOf(cVar.d())), SaversKt.x(cVar.g()));
        }
    }, new Function1<Object, AnnotatedString.c>() { // from class: androidx.compose.ui.text.SaversKt$AnnotationRangeSaver$2

        public /* synthetic */ class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f6063a;

            static {
                int[] iArr = new int[AnnotationType.values().length];
                try {
                    iArr[AnnotationType.Paragraph.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[AnnotationType.Span.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[AnnotationType.VerbatimTts.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[AnnotationType.Url.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[AnnotationType.Link.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[AnnotationType.Clickable.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[AnnotationType.String.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                f6063a = iArr;
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public final AnnotatedString.c invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            Object obj3 = null;
            AnnotationType annotationType = obj2 != null ? (AnnotationType) obj2 : null;
            Intrinsics.e(annotationType);
            Object obj4 = list.get(2);
            Integer num = obj4 != null ? (Integer) obj4 : null;
            Intrinsics.e(num);
            int iIntValue = num.intValue();
            Object obj5 = list.get(3);
            Integer num2 = obj5 != null ? (Integer) obj5 : null;
            Intrinsics.e(num2);
            int iIntValue2 = num2.intValue();
            Object obj6 = list.get(4);
            String str = obj6 != null ? (String) obj6 : null;
            Intrinsics.e(str);
            switch (a.f6063a[annotationType.ordinal()]) {
                case 1:
                    Object obj7 = list.get(1);
                    androidx.compose.runtime.saveable.d dVarI = SaversKt.i();
                    if ((!Intrinsics.c(obj7, Boolean.FALSE) || (dVarI instanceof j)) && obj7 != null) {
                        obj3 = (r) dVarI.b(obj7);
                    }
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                case 2:
                    Object obj8 = list.get(1);
                    androidx.compose.runtime.saveable.d dVarV = SaversKt.v();
                    if ((!Intrinsics.c(obj8, Boolean.FALSE) || (dVarV instanceof j)) && obj8 != null) {
                        obj3 = (x) dVarV.b(obj8);
                    }
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                case 3:
                    Object obj9 = list.get(1);
                    androidx.compose.runtime.saveable.d dVar = SaversKt.f6043d;
                    if ((!Intrinsics.c(obj9, Boolean.FALSE) || (dVar instanceof j)) && obj9 != null) {
                        obj3 = (h0) dVar.b(obj9);
                    }
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                case 4:
                    Object obj10 = list.get(1);
                    androidx.compose.runtime.saveable.d dVar2 = SaversKt.f6044e;
                    if ((!Intrinsics.c(obj10, Boolean.FALSE) || (dVar2 instanceof j)) && obj10 != null) {
                        obj3 = (g0) dVar2.b(obj10);
                    }
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                case 5:
                    Object obj11 = list.get(1);
                    androidx.compose.runtime.saveable.d dVar3 = SaversKt.f6045f;
                    if ((!Intrinsics.c(obj11, Boolean.FALSE) || (dVar3 instanceof j)) && obj11 != null) {
                        obj3 = (f.b) dVar3.b(obj11);
                    }
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                case 6:
                    Object obj12 = list.get(1);
                    androidx.compose.runtime.saveable.d dVar4 = SaversKt.f6046g;
                    if ((!Intrinsics.c(obj12, Boolean.FALSE) || (dVar4 instanceof j)) && obj12 != null) {
                        obj3 = (f.a) dVar4.b(obj12);
                    }
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                case 7:
                    Object obj13 = list.get(1);
                    obj3 = obj13 != null ? (String) obj13 : null;
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6043d = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, h0, Object>() { // from class: androidx.compose.ui.text.SaversKt$VerbatimTtsAnnotationSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, h0 h0Var) {
            return SaversKt.x(h0Var.a());
        }
    }, new Function1<Object, h0>() { // from class: androidx.compose.ui.text.SaversKt$VerbatimTtsAnnotationSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final h0 invoke(Object obj) {
            String str = obj != null ? (String) obj : null;
            Intrinsics.e(str);
            return new h0(str);
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6044e = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, g0, Object>() { // from class: androidx.compose.ui.text.SaversKt$UrlAnnotationSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, g0 g0Var) {
            return SaversKt.x(g0Var.a());
        }
    }, new Function1<Object, g0>() { // from class: androidx.compose.ui.text.SaversKt$UrlAnnotationSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final g0 invoke(Object obj) {
            String str = obj != null ? (String) obj : null;
            Intrinsics.e(str);
            return new g0(str);
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6045f = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, f.b, Object>() { // from class: androidx.compose.ui.text.SaversKt$LinkSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, f.b bVar) {
            return CollectionsKt.h(SaversKt.x(bVar.c()), SaversKt.y(bVar.b(), SaversKt.w(), eVar));
        }
    }, new Function1<Object, f.b>() { // from class: androidx.compose.ui.text.SaversKt$LinkSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final f.b invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            a0 a0Var = null;
            String str = obj2 != null ? (String) obj2 : null;
            Intrinsics.e(str);
            Object obj3 = list.get(1);
            androidx.compose.runtime.saveable.d dVarW = SaversKt.w();
            if ((!Intrinsics.c(obj3, Boolean.FALSE) || (dVarW instanceof j)) && obj3 != null) {
                a0Var = (a0) dVarW.b(obj3);
            }
            return new f.b(str, a0Var, null, 4, null);
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6046g = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, f.a, Object>() { // from class: androidx.compose.ui.text.SaversKt$ClickableSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, f.a aVar) {
            return CollectionsKt.h(SaversKt.x(aVar.c()), SaversKt.y(aVar.b(), SaversKt.w(), eVar));
        }
    }, new Function1<Object, f.a>() { // from class: androidx.compose.ui.text.SaversKt$ClickableSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final f.a invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            String str = obj2 != null ? (String) obj2 : null;
            Intrinsics.e(str);
            Object obj3 = list.get(1);
            androidx.compose.runtime.saveable.d dVarW = SaversKt.w();
            return new f.a(str, ((!Intrinsics.c(obj3, Boolean.FALSE) || (dVarW instanceof j)) && obj3 != null) ? (a0) dVarW.b(obj3) : null, null);
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6047h = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, r, Object>() { // from class: androidx.compose.ui.text.SaversKt$ParagraphStyleSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, r rVar) {
            return CollectionsKt.h(SaversKt.x(androidx.compose.ui.text.style.h.h(rVar.h())), SaversKt.x(androidx.compose.ui.text.style.j.g(rVar.i())), SaversKt.y(o0.w.b(rVar.e()), SaversKt.t(o0.w.f70628b), eVar), SaversKt.y(rVar.j(), SaversKt.q(androidx.compose.ui.text.style.n.f6429c), eVar));
        }
    }, new Function1<Object, r>() { // from class: androidx.compose.ui.text.SaversKt$ParagraphStyleSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final r invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            androidx.compose.ui.text.style.h hVar = obj2 != null ? (androidx.compose.ui.text.style.h) obj2 : null;
            Intrinsics.e(hVar);
            int iN = hVar.n();
            Object obj3 = list.get(1);
            androidx.compose.ui.text.style.j jVar = obj3 != null ? (androidx.compose.ui.text.style.j) obj3 : null;
            Intrinsics.e(jVar);
            int iM = jVar.m();
            Object obj4 = list.get(2);
            androidx.compose.runtime.saveable.d dVarT = SaversKt.t(o0.w.f70628b);
            Boolean bool = Boolean.FALSE;
            o0.w wVar = ((!Intrinsics.c(obj4, bool) || (dVarT instanceof j)) && obj4 != null) ? (o0.w) dVarT.b(obj4) : null;
            Intrinsics.e(wVar);
            long jK = wVar.k();
            Object obj5 = list.get(3);
            androidx.compose.runtime.saveable.d dVarQ = SaversKt.q(androidx.compose.ui.text.style.n.f6429c);
            return new r(iN, iM, jK, ((!Intrinsics.c(obj5, bool) || (dVarQ instanceof j)) && obj5 != null) ? (androidx.compose.ui.text.style.n) dVarQ.b(obj5) : null, null, null, 0, 0, null, 496, null);
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6048i = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, x, Object>() { // from class: androidx.compose.ui.text.SaversKt$SpanStyleSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, x xVar) {
            u1 u1VarG = u1.g(xVar.g());
            u1.a aVar = u1.f4658b;
            Object objY = SaversKt.y(u1VarG, SaversKt.j(aVar), eVar);
            o0.w wVarB = o0.w.b(xVar.k());
            o0.w.a aVar2 = o0.w.f70628b;
            return CollectionsKt.h(objY, SaversKt.y(wVarB, SaversKt.t(aVar2), eVar), SaversKt.y(xVar.n(), SaversKt.m(androidx.compose.ui.text.font.p.f6149b), eVar), SaversKt.x(xVar.l()), SaversKt.x(xVar.m()), SaversKt.x(-1), SaversKt.x(xVar.j()), SaversKt.y(o0.w.b(xVar.o()), SaversKt.t(aVar2), eVar), SaversKt.y(xVar.e(), SaversKt.n(androidx.compose.ui.text.style.a.f6354b), eVar), SaversKt.y(xVar.u(), SaversKt.p(androidx.compose.ui.text.style.m.f6425c), eVar), SaversKt.y(xVar.p(), SaversKt.s(n0.i.f70061c), eVar), SaversKt.y(u1.g(xVar.d()), SaversKt.j(aVar), eVar), SaversKt.y(xVar.s(), SaversKt.o(androidx.compose.ui.text.style.i.f6409b), eVar), SaversKt.y(xVar.r(), SaversKt.k(z4.f4921d), eVar));
        }
    }, new Function1<Object, x>() { // from class: androidx.compose.ui.text.SaversKt$SpanStyleSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final x invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            u1.a aVar = u1.f4658b;
            androidx.compose.runtime.saveable.d dVarJ = SaversKt.j(aVar);
            Boolean bool = Boolean.FALSE;
            u1 u1Var = ((!Intrinsics.c(obj2, bool) || (dVarJ instanceof j)) && obj2 != null) ? (u1) dVarJ.b(obj2) : null;
            Intrinsics.e(u1Var);
            long jU = u1Var.u();
            Object obj3 = list.get(1);
            o0.w.a aVar2 = o0.w.f70628b;
            androidx.compose.runtime.saveable.d dVarT = SaversKt.t(aVar2);
            o0.w wVar = ((!Intrinsics.c(obj3, bool) || (dVarT instanceof j)) && obj3 != null) ? (o0.w) dVarT.b(obj3) : null;
            Intrinsics.e(wVar);
            long jK = wVar.k();
            Object obj4 = list.get(2);
            androidx.compose.runtime.saveable.d dVarM = SaversKt.m(androidx.compose.ui.text.font.p.f6149b);
            androidx.compose.ui.text.font.p pVar = ((!Intrinsics.c(obj4, bool) || (dVarM instanceof j)) && obj4 != null) ? (androidx.compose.ui.text.font.p) dVarM.b(obj4) : null;
            Object obj5 = list.get(3);
            androidx.compose.ui.text.font.n nVar = obj5 != null ? (androidx.compose.ui.text.font.n) obj5 : null;
            Object obj6 = list.get(4);
            androidx.compose.ui.text.font.o oVar = obj6 != null ? (androidx.compose.ui.text.font.o) obj6 : null;
            Object obj7 = list.get(6);
            String str = obj7 != null ? (String) obj7 : null;
            Object obj8 = list.get(7);
            androidx.compose.runtime.saveable.d dVarT2 = SaversKt.t(aVar2);
            o0.w wVar2 = ((!Intrinsics.c(obj8, bool) || (dVarT2 instanceof j)) && obj8 != null) ? (o0.w) dVarT2.b(obj8) : null;
            Intrinsics.e(wVar2);
            long jK2 = wVar2.k();
            Object obj9 = list.get(8);
            androidx.compose.runtime.saveable.d dVarN = SaversKt.n(androidx.compose.ui.text.style.a.f6354b);
            androidx.compose.ui.text.style.a aVar3 = ((!Intrinsics.c(obj9, bool) || (dVarN instanceof j)) && obj9 != null) ? (androidx.compose.ui.text.style.a) dVarN.b(obj9) : null;
            Object obj10 = list.get(9);
            androidx.compose.runtime.saveable.d dVarP = SaversKt.p(androidx.compose.ui.text.style.m.f6425c);
            androidx.compose.ui.text.style.m mVar = ((!Intrinsics.c(obj10, bool) || (dVarP instanceof j)) && obj10 != null) ? (androidx.compose.ui.text.style.m) dVarP.b(obj10) : null;
            Object obj11 = list.get(10);
            androidx.compose.runtime.saveable.d dVarS = SaversKt.s(n0.i.f70061c);
            n0.i iVar = ((!Intrinsics.c(obj11, bool) || (dVarS instanceof j)) && obj11 != null) ? (n0.i) dVarS.b(obj11) : null;
            Object obj12 = list.get(11);
            androidx.compose.runtime.saveable.d dVarJ2 = SaversKt.j(aVar);
            u1 u1Var2 = ((!Intrinsics.c(obj12, bool) || (dVarJ2 instanceof j)) && obj12 != null) ? (u1) dVarJ2.b(obj12) : null;
            Intrinsics.e(u1Var2);
            long jU2 = u1Var2.u();
            Object obj13 = list.get(12);
            androidx.compose.runtime.saveable.d dVarO = SaversKt.o(androidx.compose.ui.text.style.i.f6409b);
            androidx.compose.ui.text.style.i iVar2 = ((!Intrinsics.c(obj13, bool) || (dVarO instanceof j)) && obj13 != null) ? (androidx.compose.ui.text.style.i) dVarO.b(obj13) : null;
            Object obj14 = list.get(13);
            androidx.compose.runtime.saveable.d dVarK = SaversKt.k(z4.f4921d);
            return new x(jU, jK, pVar, nVar, oVar, null, str, jK2, aVar3, mVar, iVar, jU2, iVar2, ((!Intrinsics.c(obj14, bool) || (dVarK instanceof j)) && obj14 != null) ? (z4) dVarK.b(obj14) : null, null, null, 49184, null);
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6049j = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, a0, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextLinkStylesSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, a0 a0Var) {
            return CollectionsKt.h(SaversKt.y(a0Var.d(), SaversKt.v(), eVar), SaversKt.y(a0Var.a(), SaversKt.v(), eVar), SaversKt.y(a0Var.b(), SaversKt.v(), eVar), SaversKt.y(a0Var.c(), SaversKt.v(), eVar));
        }
    }, new Function1<Object, a0>() { // from class: androidx.compose.ui.text.SaversKt$TextLinkStylesSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final a0 invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            androidx.compose.runtime.saveable.d dVarV = SaversKt.v();
            Boolean bool = Boolean.FALSE;
            x xVar = null;
            x xVar2 = ((!Intrinsics.c(obj2, bool) || (dVarV instanceof j)) && obj2 != null) ? (x) dVarV.b(obj2) : null;
            Object obj3 = list.get(1);
            androidx.compose.runtime.saveable.d dVarV2 = SaversKt.v();
            x xVar3 = ((!Intrinsics.c(obj3, bool) || (dVarV2 instanceof j)) && obj3 != null) ? (x) dVarV2.b(obj3) : null;
            Object obj4 = list.get(2);
            androidx.compose.runtime.saveable.d dVarV3 = SaversKt.v();
            x xVar4 = ((!Intrinsics.c(obj4, bool) || (dVarV3 instanceof j)) && obj4 != null) ? (x) dVarV3.b(obj4) : null;
            Object obj5 = list.get(3);
            androidx.compose.runtime.saveable.d dVarV4 = SaversKt.v();
            if ((!Intrinsics.c(obj5, bool) || (dVarV4 instanceof j)) && obj5 != null) {
                xVar = (x) dVarV4.b(obj5);
            }
            return new a0(xVar2, xVar3, xVar4, xVar);
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6050k = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, androidx.compose.ui.text.style.i, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextDecorationSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, androidx.compose.ui.text.style.i iVar) {
            return Integer.valueOf(iVar.e());
        }
    }, new Function1<Object, androidx.compose.ui.text.style.i>() { // from class: androidx.compose.ui.text.SaversKt$TextDecorationSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final androidx.compose.ui.text.style.i invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Int");
            return new androidx.compose.ui.text.style.i(((Integer) obj).intValue());
        }
    });

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6051l = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, androidx.compose.ui.text.style.m, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextGeometricTransformSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, androidx.compose.ui.text.style.m mVar) {
            return CollectionsKt.h(Float.valueOf(mVar.b()), Float.valueOf(mVar.c()));
        }
    }, new Function1<Object, androidx.compose.ui.text.style.m>() { // from class: androidx.compose.ui.text.SaversKt$TextGeometricTransformSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final androidx.compose.ui.text.style.m invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Float>");
            List list = (List) obj;
            return new androidx.compose.ui.text.style.m(((Number) list.get(0)).floatValue(), ((Number) list.get(1)).floatValue());
        }
    });

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6052m = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, androidx.compose.ui.text.style.n, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextIndentSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, androidx.compose.ui.text.style.n nVar) {
            o0.w wVarB = o0.w.b(nVar.b());
            o0.w.a aVar = o0.w.f70628b;
            return CollectionsKt.h(SaversKt.y(wVarB, SaversKt.t(aVar), eVar), SaversKt.y(o0.w.b(nVar.c()), SaversKt.t(aVar), eVar));
        }
    }, new Function1<Object, androidx.compose.ui.text.style.n>() { // from class: androidx.compose.ui.text.SaversKt$TextIndentSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final androidx.compose.ui.text.style.n invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            o0.w.a aVar = o0.w.f70628b;
            androidx.compose.runtime.saveable.d dVarT = SaversKt.t(aVar);
            Boolean bool = Boolean.FALSE;
            o0.w wVar = null;
            o0.w wVar2 = ((!Intrinsics.c(obj2, bool) || (dVarT instanceof j)) && obj2 != null) ? (o0.w) dVarT.b(obj2) : null;
            Intrinsics.e(wVar2);
            long jK = wVar2.k();
            Object obj3 = list.get(1);
            androidx.compose.runtime.saveable.d dVarT2 = SaversKt.t(aVar);
            if ((!Intrinsics.c(obj3, bool) || (dVarT2 instanceof j)) && obj3 != null) {
                wVar = (o0.w) dVarT2.b(obj3);
            }
            Intrinsics.e(wVar);
            return new androidx.compose.ui.text.style.n(jK, wVar.k(), null);
        }
    });

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6053n = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, androidx.compose.ui.text.font.p, Object>() { // from class: androidx.compose.ui.text.SaversKt$FontWeightSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, androidx.compose.ui.text.font.p pVar) {
            return Integer.valueOf(pVar.h());
        }
    }, new Function1<Object, androidx.compose.ui.text.font.p>() { // from class: androidx.compose.ui.text.SaversKt$FontWeightSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final androidx.compose.ui.text.font.p invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Int");
            return new androidx.compose.ui.text.font.p(((Integer) obj).intValue());
        }
    });

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6054o = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, androidx.compose.ui.text.style.a, Object>() { // from class: androidx.compose.ui.text.SaversKt$BaselineShiftSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return m167invoke8a2Sb4w((androidx.compose.runtime.saveable.e) obj, ((androidx.compose.ui.text.style.a) obj2).h());
        }

        /* JADX INFO: renamed from: invoke-8a2Sb4w, reason: not valid java name */
        public final Object m167invoke8a2Sb4w(androidx.compose.runtime.saveable.e eVar, float f11) {
            return Float.valueOf(f11);
        }
    }, new Function1<Object, androidx.compose.ui.text.style.a>() { // from class: androidx.compose.ui.text.SaversKt$BaselineShiftSaver$2
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: invoke-jTk7eUs, reason: not valid java name and merged with bridge method [inline-methods] */
        public final androidx.compose.ui.text.style.a invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Float");
            return androidx.compose.ui.text.style.a.b(androidx.compose.ui.text.style.a.c(((Float) obj).floatValue()));
        }
    });

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6055p = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, b0, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextRangeSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return m173invokeFDrldGo((androidx.compose.runtime.saveable.e) obj, ((b0) obj2).n());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: invoke-FDrldGo, reason: not valid java name */
        public final Object m173invokeFDrldGo(androidx.compose.runtime.saveable.e eVar, long j11) {
            return CollectionsKt.h(SaversKt.x(Integer.valueOf(b0.k(j11))), SaversKt.x(Integer.valueOf(b0.g(j11))));
        }
    }, new Function1<Object, b0>() { // from class: androidx.compose.ui.text.SaversKt$TextRangeSaver$2
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: invoke-VqIyPBM, reason: not valid java name and merged with bridge method [inline-methods] */
        public final b0 invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            Integer num = obj2 != null ? (Integer) obj2 : null;
            Intrinsics.e(num);
            int iIntValue = num.intValue();
            Object obj3 = list.get(1);
            Integer num2 = obj3 != null ? (Integer) obj3 : null;
            Intrinsics.e(num2);
            return b0.b(c0.b(iIntValue, num2.intValue()));
        }
    });

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6056q = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, z4, Object>() { // from class: androidx.compose.ui.text.SaversKt$ShadowSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, z4 z4Var) {
            return CollectionsKt.h(SaversKt.y(u1.g(z4Var.c()), SaversKt.j(u1.f4658b), eVar), SaversKt.y(y.g.d(z4Var.d()), SaversKt.u(y.g.f78470b), eVar), SaversKt.x(Float.valueOf(z4Var.b())));
        }
    }, new Function1<Object, z4>() { // from class: androidx.compose.ui.text.SaversKt$ShadowSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final z4 invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            androidx.compose.runtime.saveable.d dVarJ = SaversKt.j(u1.f4658b);
            Boolean bool = Boolean.FALSE;
            u1 u1Var = ((!Intrinsics.c(obj2, bool) || (dVarJ instanceof j)) && obj2 != null) ? (u1) dVarJ.b(obj2) : null;
            Intrinsics.e(u1Var);
            long jU = u1Var.u();
            Object obj3 = list.get(1);
            androidx.compose.runtime.saveable.d dVarU = SaversKt.u(y.g.f78470b);
            y.g gVar = ((!Intrinsics.c(obj3, bool) || (dVarU instanceof j)) && obj3 != null) ? (y.g) dVarU.b(obj3) : null;
            Intrinsics.e(gVar);
            long jV = gVar.v();
            Object obj4 = list.get(2);
            Float f11 = obj4 != null ? (Float) obj4 : null;
            Intrinsics.e(f11);
            return new z4(jU, jV, f11.floatValue(), null);
        }
    });

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final j f6057r = a(new Function2<androidx.compose.runtime.saveable.e, u1, Object>() { // from class: androidx.compose.ui.text.SaversKt$ColorSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return m169invoke4WTKRHQ((androidx.compose.runtime.saveable.e) obj, ((u1) obj2).u());
        }

        /* JADX INFO: renamed from: invoke-4WTKRHQ, reason: not valid java name */
        public final Object m169invoke4WTKRHQ(androidx.compose.runtime.saveable.e eVar, long j11) {
            return j11 == 16 ? Boolean.FALSE : Integer.valueOf(w1.j(j11));
        }
    }, new Function1<Object, u1>() { // from class: androidx.compose.ui.text.SaversKt$ColorSaver$2
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: invoke-ijrfgN4, reason: not valid java name and merged with bridge method [inline-methods] */
        public final u1 invoke(Object obj) {
            long jB;
            if (Intrinsics.c(obj, Boolean.FALSE)) {
                jB = u1.f4658b.e();
            } else {
                Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Int");
                jB = w1.b(((Integer) obj).intValue());
            }
            return u1.g(jB);
        }
    });

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final j f6058s = a(new Function2<androidx.compose.runtime.saveable.e, o0.w, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextUnitSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return m175invokempE4wyQ((androidx.compose.runtime.saveable.e) obj, ((o0.w) obj2).k());
        }

        /* JADX INFO: renamed from: invoke-mpE4wyQ, reason: not valid java name */
        public final Object m175invokempE4wyQ(androidx.compose.runtime.saveable.e eVar, long j11) {
            return o0.w.e(j11, o0.w.f70628b.a()) ? Boolean.FALSE : CollectionsKt.h(SaversKt.x(Float.valueOf(o0.w.h(j11))), SaversKt.x(o0.y.d(o0.w.g(j11))));
        }
    }, new Function1<Object, o0.w>() { // from class: androidx.compose.ui.text.SaversKt$TextUnitSaver$2
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: invoke-XNhUCwk, reason: not valid java name and merged with bridge method [inline-methods] */
        public final o0.w invoke(Object obj) {
            if (Intrinsics.c(obj, Boolean.FALSE)) {
                return o0.w.b(o0.w.f70628b.a());
            }
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            Float f11 = obj2 != null ? (Float) obj2 : null;
            Intrinsics.e(f11);
            float fFloatValue = f11.floatValue();
            Object obj3 = list.get(1);
            o0.y yVar = obj3 != null ? (o0.y) obj3 : null;
            Intrinsics.e(yVar);
            return o0.w.b(o0.x.a(fFloatValue, yVar.j()));
        }
    });

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final j f6059t = a(new Function2<androidx.compose.runtime.saveable.e, y.g, Object>() { // from class: androidx.compose.ui.text.SaversKt$OffsetSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return m171invokeUv8p0NA((androidx.compose.runtime.saveable.e) obj, ((y.g) obj2).v());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: invoke-Uv8p0NA, reason: not valid java name */
        public final Object m171invokeUv8p0NA(androidx.compose.runtime.saveable.e eVar, long j11) {
            return y.g.j(j11, y.g.f78470b.b()) ? Boolean.FALSE : CollectionsKt.h(SaversKt.x(Float.valueOf(y.g.m(j11))), SaversKt.x(Float.valueOf(y.g.n(j11))));
        }
    }, new Function1<Object, y.g>() { // from class: androidx.compose.ui.text.SaversKt$OffsetSaver$2
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: invoke-x-9fifI, reason: not valid java name and merged with bridge method [inline-methods] */
        public final y.g invoke(Object obj) {
            if (Intrinsics.c(obj, Boolean.FALSE)) {
                return y.g.d(y.g.f78470b.b());
            }
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            Float f11 = obj2 != null ? (Float) obj2 : null;
            Intrinsics.e(f11);
            float fFloatValue = f11.floatValue();
            Object obj3 = list.get(1);
            Float f12 = obj3 != null ? (Float) obj3 : null;
            Intrinsics.e(f12);
            return y.g.d(y.h.a(fFloatValue, f12.floatValue()));
        }
    });

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6060u = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, n0.i, Object>() { // from class: androidx.compose.ui.text.SaversKt$LocaleListSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, n0.i iVar) {
            List listF = iVar.f();
            ArrayList arrayList = new ArrayList(listF.size());
            int size = listF.size();
            for (int i11 = 0; i11 < size; i11++) {
                arrayList.add(SaversKt.y((n0.h) listF.get(i11), SaversKt.r(n0.h.f70059b), eVar));
            }
            return arrayList;
        }
    }, new Function1<Object, n0.i>() { // from class: androidx.compose.ui.text.SaversKt$LocaleListSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final n0.i invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                Object obj2 = list.get(i11);
                androidx.compose.runtime.saveable.d dVarR = SaversKt.r(n0.h.f70059b);
                n0.h hVar = null;
                if ((!Intrinsics.c(obj2, Boolean.FALSE) || (dVarR instanceof j)) && obj2 != null) {
                    hVar = (n0.h) dVarR.b(obj2);
                }
                Intrinsics.e(hVar);
                arrayList.add(hVar);
            }
            return new n0.i(arrayList);
        }
    });

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f6061v = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, n0.h, Object>() { // from class: androidx.compose.ui.text.SaversKt$LocaleSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, n0.h hVar) {
            return hVar.b();
        }
    }, new Function1<Object, n0.h>() { // from class: androidx.compose.ui.text.SaversKt$LocaleSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final n0.h invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.String");
            return new n0.h((String) obj);
        }
    });

    public static final class a implements j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function2 f6064a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function1 f6065b;

        a(Function2 function2, Function1 function1) {
            this.f6064a = function2;
            this.f6065b = function1;
        }

        @Override // androidx.compose.runtime.saveable.d
        public Object a(androidx.compose.runtime.saveable.e eVar, Object obj) {
            return this.f6064a.invoke(eVar, obj);
        }

        @Override // androidx.compose.runtime.saveable.d
        public Object b(Object obj) {
            return this.f6065b.invoke(obj);
        }
    }

    private static final j a(Function2 function2, Function1 function1) {
        return new a(function2, function1);
    }

    public static final androidx.compose.runtime.saveable.d h() {
        return f6040a;
    }

    public static final androidx.compose.runtime.saveable.d i() {
        return f6047h;
    }

    public static final androidx.compose.runtime.saveable.d j(u1.a aVar) {
        return f6057r;
    }

    public static final androidx.compose.runtime.saveable.d k(z4.a aVar) {
        return f6056q;
    }

    public static final androidx.compose.runtime.saveable.d l(b0.a aVar) {
        return f6055p;
    }

    public static final androidx.compose.runtime.saveable.d m(androidx.compose.ui.text.font.p.a aVar) {
        return f6053n;
    }

    public static final androidx.compose.runtime.saveable.d n(androidx.compose.ui.text.style.a.C0057a c0057a) {
        return f6054o;
    }

    public static final androidx.compose.runtime.saveable.d o(androidx.compose.ui.text.style.i.a aVar) {
        return f6050k;
    }

    public static final androidx.compose.runtime.saveable.d p(androidx.compose.ui.text.style.m.a aVar) {
        return f6051l;
    }

    public static final androidx.compose.runtime.saveable.d q(androidx.compose.ui.text.style.n.a aVar) {
        return f6052m;
    }

    public static final androidx.compose.runtime.saveable.d r(n0.h.a aVar) {
        return f6061v;
    }

    public static final androidx.compose.runtime.saveable.d s(n0.i.a aVar) {
        return f6060u;
    }

    public static final androidx.compose.runtime.saveable.d t(o0.w.a aVar) {
        return f6058s;
    }

    public static final androidx.compose.runtime.saveable.d u(y.g.a aVar) {
        return f6059t;
    }

    public static final androidx.compose.runtime.saveable.d v() {
        return f6048i;
    }

    public static final androidx.compose.runtime.saveable.d w() {
        return f6049j;
    }

    public static final Object x(Object obj) {
        return obj;
    }

    public static final Object y(Object obj, androidx.compose.runtime.saveable.d dVar, androidx.compose.runtime.saveable.e eVar) {
        Object objA;
        return (obj == null || (objA = dVar.a(eVar, obj)) == null) ? Boolean.FALSE : objA;
    }
}
