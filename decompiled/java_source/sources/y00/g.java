package y00;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.tools.ant.types.u;

/* JADX INFO: loaded from: classes7.dex */
public class g extends a {
    private static u m(Iterator it) {
        return (u) it.next();
    }

    @Override // y00.a
    protected Collection f() {
        return k(false);
    }

    protected Collection k(boolean z10) {
        List listG = g();
        if (listG.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(listG.size() * 2);
        HashSet hashSet = new HashSet(listG.size() * 2);
        Iterator it = listG.iterator();
        while (it.hasNext()) {
            Iterator it2 = m(it).iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                if (z10) {
                    next = next.toString();
                }
                if (hashSet.add(next)) {
                    arrayList.add(next);
                }
            }
        }
        return arrayList;
    }

    public String[] l() {
        if (isReference()) {
            return ((g) getCheckedRef()).l();
        }
        Collection collectionK = k(true);
        return (String[]) collectionK.toArray(new String[collectionK.size()]);
    }
}
