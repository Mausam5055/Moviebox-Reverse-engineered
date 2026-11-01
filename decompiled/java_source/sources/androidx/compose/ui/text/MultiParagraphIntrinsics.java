package androidx.compose.ui.text;

import com.transsion.baselib.db.download.DownloadException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class MultiParagraphIntrinsics implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AnnotatedString f6035a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f6036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f6037c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f6038d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f6039e;

    public MultiParagraphIntrinsics(AnnotatedString annotatedString, d0 d0Var, List list, o0.e eVar, androidx.compose.ui.text.font.h.b bVar) {
        this.f6035a = annotatedString;
        this.f6036b = list;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f6037c = LazyKt.a(lazyThreadSafetyMode, new Function0<Float>() { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$minIntrinsicWidth$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                Object obj;
                o oVarB;
                List listF = this.this$0.f();
                if (listF.isEmpty()) {
                    obj = null;
                } else {
                    Object obj2 = listF.get(0);
                    float fC = ((n) obj2).b().c();
                    int iN = CollectionsKt.n(listF);
                    int i11 = 1;
                    if (1 <= iN) {
                        while (true) {
                            Object obj3 = listF.get(i11);
                            float fC2 = ((n) obj3).b().c();
                            if (Float.compare(fC, fC2) < 0) {
                                obj2 = obj3;
                                fC = fC2;
                            }
                            if (i11 == iN) {
                                break;
                            }
                            i11++;
                        }
                    }
                    obj = obj2;
                }
                n nVar = (n) obj;
                return Float.valueOf((nVar == null || (oVarB = nVar.b()) == null) ? 0.0f : oVarB.c());
            }
        });
        this.f6038d = LazyKt.a(lazyThreadSafetyMode, new Function0<Float>() { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$maxIntrinsicWidth$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                Object obj;
                o oVarB;
                List listF = this.this$0.f();
                if (listF.isEmpty()) {
                    obj = null;
                } else {
                    Object obj2 = listF.get(0);
                    float fA = ((n) obj2).b().a();
                    int iN = CollectionsKt.n(listF);
                    int i11 = 1;
                    if (1 <= iN) {
                        while (true) {
                            Object obj3 = listF.get(i11);
                            float fA2 = ((n) obj3).b().a();
                            if (Float.compare(fA, fA2) < 0) {
                                obj2 = obj3;
                                fA = fA2;
                            }
                            if (i11 == iN) {
                                break;
                            }
                            i11++;
                        }
                    }
                    obj = obj2;
                }
                n nVar = (n) obj;
                return Float.valueOf((nVar == null || (oVarB = nVar.b()) == null) ? 0.0f : oVarB.a());
            }
        });
        r rVarK = d0Var.K();
        List listL = d.l(annotatedString, rVarK);
        ArrayList arrayList = new ArrayList(listL.size());
        int size = listL.size();
        for (int i11 = 0; i11 < size; i11++) {
            AnnotatedString.c cVar = (AnnotatedString.c) listL.get(i11);
            AnnotatedString annotatedStringM = d.m(annotatedString, cVar.f(), cVar.d());
            arrayList.add(new n(p.a(annotatedStringM.i(), d0Var.H(h((r) cVar.e(), rVarK)), annotatedStringM.g(), h.b(g(), cVar.f(), cVar.d()), eVar, bVar), cVar.f(), cVar.d()));
        }
        this.f6039e = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final r h(r rVar, r rVar2) {
        return !androidx.compose.ui.text.style.j.j(rVar.i(), androidx.compose.ui.text.style.j.f6414b.f()) ? rVar : rVar.a((DownloadException.EXCEPTION_IO_HTTP_RETRY & 1) != 0 ? rVar.f6344a : 0, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 2) != 0 ? rVar.f6345b : rVar2.i(), (DownloadException.EXCEPTION_IO_HTTP_RETRY & 4) != 0 ? rVar.f6346c : 0L, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 8) != 0 ? rVar.f6347d : null, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 16) != 0 ? rVar.f6348e : null, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 32) != 0 ? rVar.f6349f : null, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 64) != 0 ? rVar.f6350g : 0, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 128) != 0 ? rVar.f6351h : 0, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 256) != 0 ? rVar.f6352i : null);
    }

    @Override // androidx.compose.ui.text.o
    public float a() {
        return ((Number) this.f6038d.getValue()).floatValue();
    }

    @Override // androidx.compose.ui.text.o
    public boolean b() {
        List list = this.f6039e;
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((n) list.get(i11)).b().b()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.text.o
    public float c() {
        return ((Number) this.f6037c.getValue()).floatValue();
    }

    public final AnnotatedString e() {
        return this.f6035a;
    }

    public final List f() {
        return this.f6039e;
    }

    public final List g() {
        return this.f6036b;
    }
}
