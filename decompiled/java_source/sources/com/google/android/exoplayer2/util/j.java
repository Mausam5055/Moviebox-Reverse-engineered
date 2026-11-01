package com.google.android.exoplayer2.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class j implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f27591a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f27592b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set f27593c = Collections.emptySet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f27594d = Collections.emptyList();

    public void a(Object obj) {
        synchronized (this.f27591a) {
            try {
                ArrayList arrayList = new ArrayList(this.f27594d);
                arrayList.add(obj);
                this.f27594d = Collections.unmodifiableList(arrayList);
                Integer num = (Integer) this.f27592b.get(obj);
                if (num == null) {
                    HashSet hashSet = new HashSet(this.f27593c);
                    hashSet.add(obj);
                    this.f27593c = Collections.unmodifiableSet(hashSet);
                }
                this.f27592b.put(obj, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b(Object obj) {
        synchronized (this.f27591a) {
            try {
                Integer num = (Integer) this.f27592b.get(obj);
                if (num == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList(this.f27594d);
                arrayList.remove(obj);
                this.f27594d = Collections.unmodifiableList(arrayList);
                if (num.intValue() == 1) {
                    this.f27592b.remove(obj);
                    HashSet hashSet = new HashSet(this.f27593c);
                    hashSet.remove(obj);
                    this.f27593c = Collections.unmodifiableSet(hashSet);
                } else {
                    this.f27592b.put(obj, Integer.valueOf(num.intValue() - 1));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int count(Object obj) {
        int iIntValue;
        synchronized (this.f27591a) {
            try {
                iIntValue = this.f27592b.containsKey(obj) ? ((Integer) this.f27592b.get(obj)).intValue() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iIntValue;
    }

    public Set elementSet() {
        Set set;
        synchronized (this.f27591a) {
            set = this.f27593c;
        }
        return set;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        Iterator it;
        synchronized (this.f27591a) {
            it = this.f27594d.iterator();
        }
        return it;
    }
}
