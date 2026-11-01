package mf;

import com.tencent.tinker.android.dex.v;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class g extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.tencent.tinker.android.dex.j f69531d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private v.a f69532e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.tencent.tinker.android.dex.j.h f69533f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List f69534g;

    public g(nf.a aVar, com.tencent.tinker.android.dex.j jVar, com.tencent.tinker.android.dex.j jVar2, of.c cVar) {
        super(aVar, jVar, cVar);
        this.f69531d = null;
        this.f69532e = null;
        this.f69533f = null;
        this.f69534g = null;
        if (jVar2 != null) {
            this.f69531d = jVar2;
            v.a aVar2 = jVar2.h().f40660g;
            this.f69532e = aVar2;
            this.f69533f = jVar2.m(aVar2);
            this.f69534g = new ArrayList(512);
        }
    }

    private List n(List list) {
        int i11;
        HashMap map = new HashMap(list.size() + 8);
        HashMap map2 = new HashMap(list.size() + 8);
        jf.a aVar = new jf.a(list.size() + 8);
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            com.tencent.tinker.android.dex.g gVar = (com.tencent.tinker.android.dex.g) it.next();
            map.put(Integer.valueOf(gVar.f40587b), gVar);
            map2.put(Integer.valueOf(gVar.f40587b), new ArrayList(8));
            aVar.n(gVar.f40587b, 0);
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            com.tencent.tinker.android.dex.g gVar2 = (com.tencent.tinker.android.dex.g) it2.next();
            if (map.containsKey(Integer.valueOf(gVar2.f40589d))) {
                ((List) map2.get(Integer.valueOf(gVar2.f40589d))).add(Integer.valueOf(gVar2.f40587b));
                int i12 = gVar2.f40587b;
                aVar.n(i12, aVar.g(i12) + 1);
            }
            for (short s11 : this.f69531d.i(gVar2)) {
                if (map.containsKey(Integer.valueOf(s11))) {
                    ((List) map2.get(Integer.valueOf(s11))).add(Integer.valueOf(gVar2.f40587b));
                    int i13 = gVar2.f40587b;
                    aVar.n(i13, aVar.g(i13) + 1);
                }
            }
        }
        ArrayDeque arrayDeque = new ArrayDeque(64);
        for (i11 = 0; i11 < aVar.o(); i11++) {
            int iM = aVar.m(i11);
            if (aVar.p(i11) == 0) {
                arrayDeque.offer(Integer.valueOf(iM));
            }
        }
        ArrayList arrayList = new ArrayList();
        while (!arrayDeque.isEmpty()) {
            Integer num = (Integer) arrayDeque.poll();
            num.intValue();
            arrayList.add((com.tencent.tinker.android.dex.g) map.get(num));
            for (Integer num2 : (List) map2.get(num)) {
                int iIntValue = num2.intValue();
                int iG = aVar.g(iIntValue) - 1;
                aVar.n(iIntValue, iG);
                if (iG == 0) {
                    arrayDeque.offer(num2);
                }
            }
        }
        if (arrayList.size() == list.size()) {
            return arrayList;
        }
        throw new IllegalStateException("Illegal dex format, there's at least one loop in class inheritance graph.");
    }

    @Override // mf.j
    protected v.a e(com.tencent.tinker.android.dex.j jVar) {
        return jVar.h().f40660g;
    }

    @Override // mf.j
    protected void h() {
        List listN = n(this.f69534g);
        this.f69534g = listN;
        Iterator it = listN.iterator();
        while (it.hasNext()) {
            this.f69533f.W((com.tencent.tinker.android.dex.g) it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public com.tencent.tinker.android.dex.g a(of.a aVar, com.tencent.tinker.android.dex.g gVar) {
        return aVar.g(gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public com.tencent.tinker.android.dex.g g(ff.a aVar) {
        return aVar.q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public int k(com.tencent.tinker.android.dex.g gVar) {
        this.f69532e.f40682c++;
        this.f69534g.add(gVar);
        return 0;
    }
}
