package n4;

import com.airbnb.lottie.model.DocumentData;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class o extends g {

    class a extends w4.c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ w4.b f70228d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ w4.c f70229e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ DocumentData f70230f;

        a(w4.b bVar, w4.c cVar, DocumentData documentData) {
            this.f70228d = bVar;
            this.f70229e = cVar;
            this.f70230f = documentData;
        }

        @Override // w4.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public DocumentData a(w4.b bVar) {
            this.f70228d.h(bVar.f(), bVar.a(), ((DocumentData) bVar.g()).f17770a, ((DocumentData) bVar.b()).f17770a, bVar.d(), bVar.c(), bVar.e());
            String str = (String) this.f70229e.a(this.f70228d);
            DocumentData documentData = (DocumentData) (bVar.c() == 1.0f ? bVar.b() : bVar.g());
            this.f70230f.a(str, documentData.f17771b, documentData.f17772c, documentData.f17773d, documentData.f17774e, documentData.f17775f, documentData.f17776g, documentData.f17777h, documentData.f17778i, documentData.f17779j, documentData.f17780k, documentData.f17781l, documentData.f17782m);
            return this.f70230f;
        }
    }

    public o(List list) {
        super(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // n4.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public DocumentData i(w4.a aVar, float f11) {
        Object obj;
        w4.c cVar = this.f70180e;
        if (cVar == null) {
            return (f11 != 1.0f || (obj = aVar.f77565c) == null) ? (DocumentData) aVar.f77564b : (DocumentData) obj;
        }
        float f12 = aVar.f77569g;
        Float f13 = aVar.f77570h;
        float fFloatValue = f13 == null ? Float.MAX_VALUE : f13.floatValue();
        Object obj2 = aVar.f77564b;
        DocumentData documentData = (DocumentData) obj2;
        Object obj3 = aVar.f77565c;
        return (DocumentData) cVar.b(f12, fFloatValue, documentData, obj3 == null ? (DocumentData) obj2 : (DocumentData) obj3, f11, d(), f());
    }

    public void r(w4.c cVar) {
        super.o(new a(new w4.b(), cVar, new DocumentData()));
    }
}
