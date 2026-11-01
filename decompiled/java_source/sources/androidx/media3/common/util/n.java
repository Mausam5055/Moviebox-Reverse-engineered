package androidx.media3.common.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f10411a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f10412b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set f10413c = Collections.emptySet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f10414d = Collections.emptyList();

    public void a(Object obj) {
        synchronized (this.f10411a) {
            try {
                ArrayList arrayList = new ArrayList(this.f10414d);
                arrayList.add(obj);
                this.f10414d = Collections.unmodifiableList(arrayList);
                Integer num = (Integer) this.f10412b.get(obj);
                if (num == null) {
                    HashSet hashSet = new HashSet(this.f10413c);
                    hashSet.add(obj);
                    this.f10413c = Collections.unmodifiableSet(hashSet);
                }
                this.f10412b.put(obj, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b(Object obj) {
        synchronized (this.f10411a) {
            try {
                Integer num = (Integer) this.f10412b.get(obj);
                if (num == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList(this.f10414d);
                arrayList.remove(obj);
                this.f10414d = Collections.unmodifiableList(arrayList);
                if (num.intValue() == 1) {
                    this.f10412b.remove(obj);
                    HashSet hashSet = new HashSet(this.f10413c);
                    hashSet.remove(obj);
                    this.f10413c = Collections.unmodifiableSet(hashSet);
                } else {
                    this.f10412b.put(obj, Integer.valueOf(num.intValue() - 1));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int count(Object obj) {
        int iIntValue;
        synchronized (this.f10411a) {
            try {
                iIntValue = this.f10412b.containsKey(obj) ? ((Integer) this.f10412b.get(obj)).intValue() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iIntValue;
    }

    public Set elementSet() {
        Set set;
        synchronized (this.f10411a) {
            set = this.f10413c;
        }
        return set;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        Iterator it;
        synchronized (this.f10411a) {
            it = this.f10414d.iterator();
        }
        return it;
    }
}
