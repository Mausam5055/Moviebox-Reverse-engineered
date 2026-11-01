package com.google.common.collect;

import com.google.common.base.Predicates;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
class StandardTable<R, C, V> extends com.google.common.collect.i implements Serializable {
    private static final long serialVersionUID = 0;
    final Map<R, Map<C, V>> backingMap;
    private transient Set<C> columnKeySet;
    private transient StandardTable<R, C, V>.f columnMap;
    final com.google.common.base.q factory;
    private transient Map<R, Map<C, V>> rowMap;

    private class b implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Iterator f30666a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Map.Entry f30667b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Iterator f30668c;

        private b() {
            this.f30666a = StandardTable.this.backingMap.entrySet().iterator();
            this.f30668c = Iterators.j();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c4.a next() {
            if (!this.f30668c.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f30666a.next();
                this.f30667b = entry;
                this.f30668c = ((Map) entry.getValue()).entrySet().iterator();
            }
            Objects.requireNonNull(this.f30667b);
            Map.Entry entry2 = (Map.Entry) this.f30668c.next();
            return Tables.b(this.f30667b.getKey(), entry2.getKey(), entry2.getValue());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30666a.hasNext() || this.f30668c.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f30668c.remove();
            Map.Entry entry = this.f30667b;
            Objects.requireNonNull(entry);
            if (((Map) entry.getValue()).isEmpty()) {
                this.f30666a.remove();
                this.f30667b = null;
            }
        }
    }

    private class c extends Maps.q {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Object f30670d;

        private class a extends Sets.e {
            private a() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public void clear() {
                c.this.e(Predicates.b());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return StandardTable.this.a(entry.getKey(), c.this.f30670d, entry.getValue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                c cVar = c.this;
                return !StandardTable.this.containsColumn(cVar.f30670d);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator iterator() {
                return new b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return StandardTable.this.d(entry.getKey(), c.this.f30670d, entry.getValue());
            }

            @Override // com.google.common.collect.Sets.e, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection collection) {
                return c.this.e(Predicates.i(Predicates.g(collection)));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    if (it.next().containsKey(c.this.f30670d)) {
                        i11++;
                    }
                }
                return i11;
            }
        }

        private class b extends AbstractIterator {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final Iterator f30673c;

            class a extends com.google.common.collect.b {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ Map.Entry f30675a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ b f30676b;

                a(b bVar, Map.Entry entry) {
                    this.f30675a = entry;
                    this.f30676b = bVar;
                }

                @Override // com.google.common.collect.b, java.util.Map.Entry
                public Object getKey() {
                    return this.f30675a.getKey();
                }

                @Override // com.google.common.collect.b, java.util.Map.Entry
                public Object getValue() {
                    return ((Map) this.f30675a.getValue()).get(c.this.f30670d);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.common.collect.b, java.util.Map.Entry
                public Object setValue(Object obj) {
                    return m3.a(((Map) this.f30675a.getValue()).put(c.this.f30670d, com.google.common.base.m.o(obj)));
                }
            }

            private b() {
                this.f30673c = StandardTable.this.backingMap.entrySet().iterator();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public Map.Entry a() {
                while (this.f30673c.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f30673c.next();
                    if (((Map) entry.getValue()).containsKey(c.this.f30670d)) {
                        return new a(this, entry);
                    }
                }
                return (Map.Entry) b();
            }
        }

        /* JADX INFO: renamed from: com.google.common.collect.StandardTable$c$c, reason: collision with other inner class name */
        private class C0409c extends Maps.l {
            C0409c() {
                super(c.this);
            }

            @Override // com.google.common.collect.Maps.l, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                c cVar = c.this;
                return StandardTable.this.contains(obj, cVar.f30670d);
            }

            @Override // com.google.common.collect.Maps.l, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                c cVar = c.this;
                return StandardTable.this.remove(obj, cVar.f30670d) != null;
            }

            @Override // com.google.common.collect.Sets.e, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection collection) {
                return c.this.e(Maps.n(Predicates.i(Predicates.g(collection))));
            }
        }

        private class d extends Maps.p {
            d() {
                super(c.this);
            }

            @Override // com.google.common.collect.Maps.p, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                return obj != null && c.this.e(Maps.F(Predicates.f(obj)));
            }

            @Override // com.google.common.collect.Maps.p, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection collection) {
                return c.this.e(Maps.F(Predicates.g(collection)));
            }

            @Override // com.google.common.collect.Maps.p, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection collection) {
                return c.this.e(Maps.F(Predicates.i(Predicates.g(collection))));
            }
        }

        c(Object obj) {
            this.f30670d = com.google.common.base.m.o(obj);
        }

        @Override // com.google.common.collect.Maps.q
        Set a() {
            return new a();
        }

        @Override // com.google.common.collect.Maps.q
        /* JADX INFO: renamed from: c */
        Set i() {
            return new C0409c();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return StandardTable.this.contains(obj, this.f30670d);
        }

        @Override // com.google.common.collect.Maps.q
        Collection d() {
            return new d();
        }

        boolean e(com.google.common.base.n nVar) {
            Iterator<Map.Entry<R, Map<C, V>>> it = StandardTable.this.backingMap.entrySet().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map.Entry<R, Map<C, V>> next = it.next();
                Map<C, V> value = next.getValue();
                V v11 = value.get(this.f30670d);
                if (v11 != null && nVar.apply(Maps.i(next.getKey(), v11))) {
                    value.remove(this.f30670d);
                    if (value.isEmpty()) {
                        it.remove();
                    }
                    z10 = true;
                }
            }
            return z10;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Object get(Object obj) {
            return StandardTable.this.get(obj, this.f30670d);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractMap, java.util.Map
        public Object put(Object obj, Object obj2) {
            return StandardTable.this.put(obj, this.f30670d, obj2);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Object remove(Object obj) {
            return StandardTable.this.remove(obj, this.f30670d);
        }
    }

    private class d extends AbstractIterator {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Map f30679c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Iterator f30680d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Iterator f30681e;

        private d() {
            this.f30679c = (Map) StandardTable.this.factory.get();
            this.f30680d = StandardTable.this.backingMap.values().iterator();
            this.f30681e = Iterators.h();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.AbstractIterator
        protected Object a() {
            while (true) {
                if (this.f30681e.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f30681e.next();
                    if (!this.f30679c.containsKey(entry.getKey())) {
                        this.f30679c.put(entry.getKey(), entry.getValue());
                        return entry.getKey();
                    }
                } else {
                    if (!this.f30680d.hasNext()) {
                        return b();
                    }
                    this.f30681e = ((Map) this.f30680d.next()).entrySet().iterator();
                }
            }
        }
    }

    private class e extends i {
        private e() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return StandardTable.this.containsColumn(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return StandardTable.this.createColumnKeyIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean z10 = false;
            if (obj == null) {
                return false;
            }
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().remove(obj)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z10 = true;
                }
            }
            return z10;
        }

        @Override // com.google.common.collect.Sets.e, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection collection) {
            com.google.common.base.m.o(collection);
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (Iterators.u(next.keySet().iterator(), collection)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z10 = true;
                }
            }
            return z10;
        }

        @Override // com.google.common.collect.Sets.e, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection collection) {
            com.google.common.base.m.o(collection);
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().retainAll(collection)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z10 = true;
                }
            }
            return z10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Iterators.y(iterator());
        }
    }

    private class f extends Maps.q {

        private final class a extends i {

            /* JADX INFO: renamed from: com.google.common.collect.StandardTable$f$a$a, reason: collision with other inner class name */
            class C0410a implements com.google.common.base.f {
                C0410a() {
                }

                @Override // com.google.common.base.f
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map apply(Object obj) {
                    return StandardTable.this.column(obj);
                }
            }

            private a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                if (!StandardTable.this.containsColumn(entry.getKey())) {
                    return false;
                }
                Map map = f.this.get(entry.getKey());
                Objects.requireNonNull(map);
                return map.equals(entry.getValue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator iterator() {
                return Maps.c(StandardTable.this.columnKeySet(), new C0410a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj) || !(obj instanceof Map.Entry)) {
                    return false;
                }
                StandardTable.this.c(((Map.Entry) obj).getKey());
                return true;
            }

            @Override // com.google.common.collect.Sets.e, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection collection) {
                com.google.common.base.m.o(collection);
                return Sets.j(this, collection.iterator());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Sets.e, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection collection) {
                com.google.common.base.m.o(collection);
                boolean z10 = false;
                for (Object obj : Lists.k(StandardTable.this.columnKeySet().iterator())) {
                    if (!collection.contains(Maps.i(obj, StandardTable.this.column(obj)))) {
                        StandardTable.this.c(obj);
                        z10 = true;
                    }
                }
                return z10;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return StandardTable.this.columnKeySet().size();
            }
        }

        private class b extends Maps.p {
            b() {
                super(f.this);
            }

            @Override // com.google.common.collect.Maps.p, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                for (Map.Entry entry : f.this.entrySet()) {
                    if (((Map) entry.getValue()).equals(obj)) {
                        StandardTable.this.c(entry.getKey());
                        return true;
                    }
                }
                return false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.p, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection collection) {
                com.google.common.base.m.o(collection);
                boolean z10 = false;
                for (Object obj : Lists.k(StandardTable.this.columnKeySet().iterator())) {
                    if (collection.contains(StandardTable.this.column(obj))) {
                        StandardTable.this.c(obj);
                        z10 = true;
                    }
                }
                return z10;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.p, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection collection) {
                com.google.common.base.m.o(collection);
                boolean z10 = false;
                for (Object obj : Lists.k(StandardTable.this.columnKeySet().iterator())) {
                    if (!collection.contains(StandardTable.this.column(obj))) {
                        StandardTable.this.c(obj);
                        z10 = true;
                    }
                }
                return z10;
            }
        }

        private f() {
        }

        @Override // com.google.common.collect.Maps.q
        public Set a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return StandardTable.this.containsColumn(obj);
        }

        @Override // com.google.common.collect.Maps.q
        Collection d() {
            return new b();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Map get(Object obj) {
            if (!StandardTable.this.containsColumn(obj)) {
                return null;
            }
            StandardTable standardTable = StandardTable.this;
            Objects.requireNonNull(obj);
            return standardTable.column(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Map remove(Object obj) {
            if (StandardTable.this.containsColumn(obj)) {
                return StandardTable.this.c(obj);
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.q, java.util.AbstractMap, java.util.Map
        public Set keySet() {
            return StandardTable.this.columnKeySet();
        }
    }

    class g extends Maps.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f30688a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Map f30689b;

        class a implements Iterator {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Iterator f30691a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ g f30692b;

            a(g gVar, Iterator it) {
                this.f30691a = it;
                this.f30692b = gVar;
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry next() {
                return this.f30692b.f((Map.Entry) this.f30691a.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f30691a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f30691a.remove();
                this.f30692b.d();
            }
        }

        class b extends o2 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Map.Entry f30693a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ g f30694b;

            b(g gVar, Map.Entry entry) {
                this.f30693a = entry;
                this.f30694b = gVar;
            }

            @Override // com.google.common.collect.o2, java.util.Map.Entry
            public boolean equals(Object obj) {
                return standardEquals(obj);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.q2
            public Map.Entry l() {
                return this.f30693a;
            }

            @Override // com.google.common.collect.o2, java.util.Map.Entry
            public Object setValue(Object obj) {
                return super.setValue(com.google.common.base.m.o(obj));
            }
        }

        g(Object obj) {
            this.f30688a = com.google.common.base.m.o(obj);
        }

        @Override // com.google.common.collect.Maps.k
        Iterator a() {
            e();
            Map map = this.f30689b;
            return map == null ? Iterators.j() : new a(this, map.entrySet().iterator());
        }

        Map c() {
            return StandardTable.this.backingMap.get(this.f30688a);
        }

        @Override // com.google.common.collect.Maps.k, java.util.AbstractMap, java.util.Map
        public void clear() {
            e();
            Map map = this.f30689b;
            if (map != null) {
                map.clear();
            }
            d();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            Map map;
            e();
            return (obj == null || (map = this.f30689b) == null || !Maps.u(map, obj)) ? false : true;
        }

        void d() {
            e();
            Map map = this.f30689b;
            if (map == null || !map.isEmpty()) {
                return;
            }
            StandardTable.this.backingMap.remove(this.f30688a);
            this.f30689b = null;
        }

        final void e() {
            Map map = this.f30689b;
            if (map == null || (map.isEmpty() && StandardTable.this.backingMap.containsKey(this.f30688a))) {
                this.f30689b = c();
            }
        }

        Map.Entry f(Map.Entry entry) {
            return new b(this, entry);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Object get(Object obj) {
            Map map;
            e();
            if (obj == null || (map = this.f30689b) == null) {
                return null;
            }
            return Maps.v(map, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractMap, java.util.Map
        public Object put(Object obj, Object obj2) {
            com.google.common.base.m.o(obj);
            com.google.common.base.m.o(obj2);
            Map map = this.f30689b;
            return (map == null || map.isEmpty()) ? StandardTable.this.put(this.f30688a, obj, obj2) : this.f30689b.put(obj, obj2);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Object remove(Object obj) {
            e();
            Map map = this.f30689b;
            if (map == null) {
                return null;
            }
            Object objW = Maps.w(map, obj);
            d();
            return objW;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            e();
            Map map = this.f30689b;
            if (map == null) {
                return 0;
            }
            return map.size();
        }
    }

    class h extends Maps.q {

        private final class a extends i {

            /* JADX INFO: renamed from: com.google.common.collect.StandardTable$h$a$a, reason: collision with other inner class name */
            class C0411a implements com.google.common.base.f {
                C0411a() {
                }

                @Override // com.google.common.base.f
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map apply(Object obj) {
                    return StandardTable.this.row(obj);
                }
            }

            private a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && f2.c(StandardTable.this.backingMap.entrySet(), entry);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator iterator() {
                return Maps.c(StandardTable.this.backingMap.keySet(), new C0411a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && StandardTable.this.backingMap.entrySet().remove(entry);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return StandardTable.this.backingMap.size();
            }
        }

        h() {
        }

        @Override // com.google.common.collect.Maps.q
        protected Set a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return StandardTable.this.containsRow(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Map get(Object obj) {
            if (!StandardTable.this.containsRow(obj)) {
                return null;
            }
            StandardTable standardTable = StandardTable.this;
            Objects.requireNonNull(obj);
            return standardTable.row(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Map remove(Object obj) {
            if (obj == null) {
                return null;
            }
            return StandardTable.this.backingMap.remove(obj);
        }
    }

    private abstract class i extends Sets.e {
        private i() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            StandardTable.this.backingMap.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return StandardTable.this.backingMap.isEmpty();
        }
    }

    StandardTable(Map<R, Map<C, V>> map, com.google.common.base.q qVar) {
        this.backingMap = map;
        this.factory = qVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Object obj, Object obj2, Object obj3) {
        return obj3 != null && obj3.equals(get(obj, obj2));
    }

    private Map b(Object obj) {
        Map<C, V> map = this.backingMap.get(obj);
        if (map != null) {
            return map;
        }
        Map<C, V> map2 = (Map) this.factory.get();
        this.backingMap.put(obj, map2);
        return map2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map c(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<R, Map<C, V>>> it = this.backingMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<R, Map<C, V>> next = it.next();
            V vRemove = next.getValue().remove(obj);
            if (vRemove != null) {
                linkedHashMap.put(next.getKey(), vRemove);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(Object obj, Object obj2, Object obj3) {
        if (!a(obj, obj2, obj3)) {
            return false;
        }
        remove(obj, obj2);
        return true;
    }

    @Override // com.google.common.collect.i
    Iterator<c4.a> cellIterator() {
        return new b();
    }

    @Override // com.google.common.collect.i, com.google.common.collect.c4
    public Set<c4.a> cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.i
    public void clear() {
        this.backingMap.clear();
    }

    public Map<R, V> column(C c11) {
        return new c(c11);
    }

    @Override // com.google.common.collect.c4
    public Set<C> columnKeySet() {
        Set<C> set = this.columnKeySet;
        if (set != null) {
            return set;
        }
        e eVar = new e();
        this.columnKeySet = eVar;
        return eVar;
    }

    @Override // com.google.common.collect.c4
    public Map<C, Map<R, V>> columnMap() {
        StandardTable<R, C, V>.f fVar = this.columnMap;
        if (fVar != null) {
            return fVar;
        }
        StandardTable<R, C, V>.f fVar2 = new f();
        this.columnMap = fVar2;
        return fVar2;
    }

    @Override // com.google.common.collect.i
    public boolean contains(Object obj, Object obj2) {
        return (obj == null || obj2 == null || !super.contains(obj, obj2)) ? false : true;
    }

    @Override // com.google.common.collect.i
    public boolean containsColumn(Object obj) {
        if (obj == null) {
            return false;
        }
        Iterator<Map<C, V>> it = this.backingMap.values().iterator();
        while (it.hasNext()) {
            if (Maps.u(it.next(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.i
    public boolean containsRow(Object obj) {
        return obj != null && Maps.u(this.backingMap, obj);
    }

    @Override // com.google.common.collect.i
    public boolean containsValue(Object obj) {
        return obj != null && super.containsValue(obj);
    }

    Iterator<C> createColumnKeyIterator() {
        return new d();
    }

    Map<R, Map<C, V>> createRowMap() {
        return new h();
    }

    @Override // com.google.common.collect.i, com.google.common.collect.c4
    public V get(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        return (V) super.get(obj, obj2);
    }

    @Override // com.google.common.collect.i
    public boolean isEmpty() {
        return this.backingMap.isEmpty();
    }

    @Override // com.google.common.collect.i, com.google.common.collect.c4
    public V put(R r11, C c11, V v11) {
        com.google.common.base.m.o(r11);
        com.google.common.base.m.o(c11);
        com.google.common.base.m.o(v11);
        return (V) b(r11).put(c11, v11);
    }

    public V remove(Object obj, Object obj2) {
        Map map;
        if (obj == null || obj2 == null || (map = (Map) Maps.v(this.backingMap, obj)) == null) {
            return null;
        }
        V v11 = (V) map.remove(obj2);
        if (map.isEmpty()) {
            this.backingMap.remove(obj);
        }
        return v11;
    }

    public Map<C, V> row(R r11) {
        return new g(r11);
    }

    @Override // com.google.common.collect.c4
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.c4
    public Map<R, Map<C, V>> rowMap() {
        Map<R, Map<C, V>> map = this.rowMap;
        if (map != null) {
            return map;
        }
        Map<R, Map<C, V>> mapCreateRowMap = createRowMap();
        this.rowMap = mapCreateRowMap;
        return mapCreateRowMap;
    }

    @Override // com.google.common.collect.c4
    public int size() {
        Iterator<Map<C, V>> it = this.backingMap.values().iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().size();
        }
        return size;
    }

    @Override // com.google.common.collect.i
    public Collection<V> values() {
        return super.values();
    }
}
