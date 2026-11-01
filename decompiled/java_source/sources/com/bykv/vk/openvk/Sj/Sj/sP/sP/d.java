package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set f20247f = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Set f20248g = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f20249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f20250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f20251c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f20252d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f20253e;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f20254a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f20255b;

        a(String str) {
            this.f20254a = str;
        }

        void a() {
            d.f20247f.add(this.f20254a);
        }

        void b() {
            d.f20248g.add(this.f20254a);
        }

        public String toString() {
            return this.f20254a;
        }
    }

    d(String str) {
        ArrayList arrayList = new ArrayList(1);
        this.f20249a = arrayList;
        arrayList.add(new a(str));
        this.f20250b = 1;
        this.f20253e = 1;
    }

    d(List list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("urls can't be empty");
        }
        int size = list.size();
        this.f20250b = size;
        this.f20249a = new ArrayList(size);
        Iterator it = list.iterator();
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        while (it.hasNext()) {
            String str = (String) it.next();
            a aVar = new a(str);
            if (f20247f.contains(str)) {
                arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                arrayList2.add(aVar);
            } else if (f20248g.contains(str)) {
                arrayList = arrayList == null ? new ArrayList() : arrayList;
                arrayList.add(aVar);
            } else {
                this.f20249a.add(aVar);
            }
        }
        if (arrayList != null) {
            this.f20249a.addAll(arrayList);
        }
        if (arrayList2 != null) {
            this.f20249a.addAll(arrayList2);
        }
        Integer num = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20242h;
        this.f20253e = (num == null || num.intValue() <= 0) ? this.f20250b >= 2 ? 1 : 2 : num.intValue();
    }

    boolean b() {
        return this.f20252d < this.f20253e;
    }

    a d() {
        if (!b()) {
            throw new NoSuchElementException();
        }
        int i11 = this.f20251c + 1;
        if (i11 >= this.f20250b - 1) {
            this.f20251c = -1;
            this.f20252d++;
        } else {
            this.f20251c = i11;
        }
        a aVar = (a) this.f20249a.get(i11);
        aVar.f20255b = (this.f20252d * this.f20250b) + this.f20251c;
        return aVar;
    }
}
