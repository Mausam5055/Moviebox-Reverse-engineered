package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public class TreeRangeSet<C extends Comparable<?>> extends f implements Serializable {
    private transient Set<Range<C>> asDescendingSetOfRanges;
    private transient Set<Range<C>> asRanges;
    private transient u3 complement;
    final NavigableMap<Cut<C>, Range<C>> rangesByLowerBound;

    private final class Complement extends TreeRangeSet<C> {
        Complement() {
            super(new c(TreeRangeSet.this.rangesByLowerBound));
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.f
        public void add(Range<C> range) {
            TreeRangeSet.this.remove(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.u3
        public u3 complement() {
            return TreeRangeSet.this;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.f
        public boolean contains(C c11) {
            return !TreeRangeSet.this.contains(c11);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.f
        public void remove(Range<C> range) {
            TreeRangeSet.this.add(range);
        }
    }

    private final class SubRangeSet extends TreeRangeSet<C> {
        private final Range<C> restriction;

        /* JADX WARN: Illegal instructions before constructor call */
        SubRangeSet(Range<C> range) {
            super(new e(Range.all(), range, TreeRangeSet.this.rangesByLowerBound));
            this.restriction = range;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.f
        public void add(Range<C> range) {
            com.google.common.base.m.k(this.restriction.encloses(range), "Cannot add range %s to subRangeSet(%s)", range, this.restriction);
            TreeRangeSet.this.add(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.f
        public void clear() {
            TreeRangeSet.this.remove(this.restriction);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.f
        public boolean contains(C c11) {
            return this.restriction.contains(c11) && TreeRangeSet.this.contains(c11);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.f, com.google.common.collect.u3
        public boolean encloses(Range<C> range) {
            Range rangeRangeEnclosing;
            return (this.restriction.isEmpty() || !this.restriction.encloses(range) || (rangeRangeEnclosing = TreeRangeSet.this.rangeEnclosing(range)) == null || rangeRangeEnclosing.intersection(this.restriction).isEmpty()) ? false : true;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.f
        public Range<C> rangeContaining(C c11) {
            Range<C> rangeRangeContaining;
            if (this.restriction.contains(c11) && (rangeRangeContaining = TreeRangeSet.this.rangeContaining(c11)) != null) {
                return rangeRangeContaining.intersection(this.restriction);
            }
            return null;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.f
        public void remove(Range<C> range) {
            if (range.isConnected(this.restriction)) {
                TreeRangeSet.this.remove(range.intersection(this.restriction));
            }
        }

        @Override // com.google.common.collect.TreeRangeSet
        public u3 subRangeSet(Range<C> range) {
            if (range.encloses(this.restriction)) {
                return this;
            }
            return range.isConnected(this.restriction) ? new SubRangeSet(this.restriction.intersection(range)) : ImmutableRangeSet.of();
        }
    }

    final class b extends k2 implements Set {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Collection f30727a;

        b(Collection collection) {
            this.f30727a = collection;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.q2
        /* JADX INFO: renamed from: delegate */
        public Collection l() {
            return this.f30727a;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return Sets.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.d(this);
        }
    }

    private static final class c extends com.google.common.collect.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final NavigableMap f30729a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final NavigableMap f30730b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Range f30731c;

        class a extends AbstractIterator {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            Cut f30732c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Cut f30733d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ q3 f30734e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ c f30735f;

            a(c cVar, Cut cut, q3 q3Var) {
                this.f30733d = cut;
                this.f30734e = q3Var;
                this.f30735f = cVar;
                this.f30732c = cut;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public Map.Entry a() {
                Range rangeCreate;
                if (this.f30735f.f30731c.upperBound.isLessThan(this.f30732c) || this.f30732c == Cut.aboveAll()) {
                    return (Map.Entry) b();
                }
                if (this.f30734e.hasNext()) {
                    Range range = (Range) this.f30734e.next();
                    rangeCreate = Range.create(this.f30732c, range.lowerBound);
                    this.f30732c = range.upperBound;
                } else {
                    rangeCreate = Range.create(this.f30732c, Cut.aboveAll());
                    this.f30732c = Cut.aboveAll();
                }
                return Maps.i(rangeCreate.lowerBound, rangeCreate);
            }
        }

        class b extends AbstractIterator {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            Cut f30736c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Cut f30737d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ q3 f30738e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ c f30739f;

            b(c cVar, Cut cut, q3 q3Var) {
                this.f30737d = cut;
                this.f30738e = q3Var;
                this.f30739f = cVar;
                this.f30736c = cut;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public Map.Entry a() {
                if (this.f30736c == Cut.belowAll()) {
                    return (Map.Entry) b();
                }
                if (this.f30738e.hasNext()) {
                    Range range = (Range) this.f30738e.next();
                    Range rangeCreate = Range.create(range.upperBound, this.f30736c);
                    this.f30736c = range.lowerBound;
                    if (this.f30739f.f30731c.lowerBound.isLessThan(rangeCreate.lowerBound)) {
                        return Maps.i(rangeCreate.lowerBound, rangeCreate);
                    }
                } else if (this.f30739f.f30731c.lowerBound.isLessThan(Cut.belowAll())) {
                    Range rangeCreate2 = Range.create(Cut.belowAll(), this.f30736c);
                    this.f30736c = Cut.belowAll();
                    return Maps.i(Cut.belowAll(), rangeCreate2);
                }
                return (Map.Entry) b();
            }
        }

        c(NavigableMap navigableMap) {
            this(navigableMap, Range.all());
        }

        private c(NavigableMap navigableMap, Range range) {
            this.f30729a = navigableMap;
            this.f30730b = new d(navigableMap);
            this.f30731c = range;
        }

        private NavigableMap i(Range range) {
            if (!this.f30731c.isConnected(range)) {
                return ImmutableSortedMap.of();
            }
            return new c(this.f30729a, range.intersection(this.f30731c));
        }

        @Override // com.google.common.collect.Maps.k
        Iterator a() {
            Collection collectionValues;
            Cut cutBelowAll;
            if (this.f30731c.hasLowerBound()) {
                collectionValues = this.f30730b.tailMap((Cut) this.f30731c.lowerEndpoint(), this.f30731c.lowerBoundType() == BoundType.CLOSED).values();
            } else {
                collectionValues = this.f30730b.values();
            }
            q3 q3VarS = Iterators.s(collectionValues.iterator());
            if (this.f30731c.contains(Cut.belowAll()) && (!q3VarS.hasNext() || ((Range) q3VarS.peek()).lowerBound != Cut.belowAll())) {
                cutBelowAll = Cut.belowAll();
            } else {
                if (!q3VarS.hasNext()) {
                    return Iterators.h();
                }
                cutBelowAll = ((Range) q3VarS.next()).upperBound;
            }
            return new a(this, cutBelowAll, q3VarS);
        }

        @Override // com.google.common.collect.e
        Iterator c() {
            Object obj;
            q3 q3VarS = Iterators.s(this.f30730b.headMap(this.f30731c.hasUpperBound() ? (Cut) this.f30731c.upperEndpoint() : Cut.aboveAll(), this.f30731c.hasUpperBound() && this.f30731c.upperBoundType() == BoundType.CLOSED).descendingMap().values().iterator());
            if (q3VarS.hasNext()) {
                obj = ((Range) q3VarS.peek()).upperBound == Cut.aboveAll() ? ((Range) q3VarS.next()).lowerBound : (Cut) this.f30729a.higherKey(((Range) q3VarS.peek()).upperBound);
            } else {
                if (!this.f30731c.contains(Cut.belowAll()) || this.f30729a.containsKey(Cut.belowAll())) {
                    return Iterators.h();
                }
                obj = (Cut) this.f30729a.higherKey(Cut.belowAll());
            }
            return new b(this, (Cut) com.google.common.base.h.a(obj, Cut.aboveAll()), q3VarS);
        }

        @Override // java.util.SortedMap
        public Comparator comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Range get(Object obj) {
            if (obj instanceof Cut) {
                try {
                    Cut cut = (Cut) obj;
                    Map.Entry entryFirstEntry = tailMap(cut, true).firstEntry();
                    if (entryFirstEntry != null && ((Cut) entryFirstEntry.getKey()).equals(cut)) {
                        return (Range) entryFirstEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public NavigableMap headMap(Cut cut, boolean z10) {
            return i(Range.upTo(cut, BoundType.forBoolean(z10)));
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public NavigableMap subMap(Cut cut, boolean z10, Cut cut2, boolean z11) {
            return i(Range.range(cut, BoundType.forBoolean(z10), cut2, BoundType.forBoolean(z11)));
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public NavigableMap tailMap(Cut cut, boolean z10) {
            return i(Range.downTo(cut, BoundType.forBoolean(z10)));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return Iterators.y(a());
        }
    }

    static final class d extends com.google.common.collect.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final NavigableMap f30740a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Range f30741b;

        class a extends AbstractIterator {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Iterator f30742c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ d f30743d;

            a(d dVar, Iterator it) {
                this.f30742c = it;
                this.f30743d = dVar;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public Map.Entry a() {
                if (!this.f30742c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f30742c.next();
                return this.f30743d.f30741b.upperBound.isLessThan(range.upperBound) ? (Map.Entry) b() : Maps.i(range.upperBound, range);
            }
        }

        class b extends AbstractIterator {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ q3 f30744c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ d f30745d;

            b(d dVar, q3 q3Var) {
                this.f30744c = q3Var;
                this.f30745d = dVar;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public Map.Entry a() {
                if (!this.f30744c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f30744c.next();
                return this.f30745d.f30741b.lowerBound.isLessThan(range.upperBound) ? Maps.i(range.upperBound, range) : (Map.Entry) b();
            }
        }

        d(NavigableMap navigableMap) {
            this.f30740a = navigableMap;
            this.f30741b = Range.all();
        }

        private d(NavigableMap navigableMap, Range range) {
            this.f30740a = navigableMap;
            this.f30741b = range;
        }

        private NavigableMap i(Range range) {
            return range.isConnected(this.f30741b) ? new d(this.f30740a, range.intersection(this.f30741b)) : ImmutableSortedMap.of();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // com.google.common.collect.Maps.k
        Iterator a() {
            Map.Entry entryLowerEntry;
            Iterator it;
            if (this.f30741b.hasLowerBound() && (entryLowerEntry = this.f30740a.lowerEntry((Cut) this.f30741b.lowerEndpoint())) != null) {
                it = this.f30741b.lowerBound.isLessThan(((Range) entryLowerEntry.getValue()).upperBound) ? this.f30740a.tailMap((Cut) entryLowerEntry.getKey(), true).values().iterator() : this.f30740a.tailMap((Cut) this.f30741b.lowerEndpoint(), true).values().iterator();
            } else {
                it = this.f30740a.values().iterator();
            }
            return new a(this, it);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // com.google.common.collect.e
        Iterator c() {
            q3 q3VarS = Iterators.s((this.f30741b.hasUpperBound() ? this.f30740a.headMap((Cut) this.f30741b.upperEndpoint(), false).descendingMap().values() : this.f30740a.descendingMap().values()).iterator());
            if (q3VarS.hasNext() && this.f30741b.upperBound.isLessThan(((Range) q3VarS.peek()).upperBound)) {
                q3VarS.next();
            }
            return new b(this, q3VarS);
        }

        @Override // java.util.SortedMap
        public Comparator comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Range get(Object obj) {
            Map.Entry entryLowerEntry;
            if (obj instanceof Cut) {
                try {
                    Cut cut = (Cut) obj;
                    if (this.f30741b.contains(cut) && (entryLowerEntry = this.f30740a.lowerEntry(cut)) != null && ((Range) entryLowerEntry.getValue()).upperBound.equals(cut)) {
                        return (Range) entryLowerEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public NavigableMap headMap(Cut cut, boolean z10) {
            return i(Range.upTo(cut, BoundType.forBoolean(z10)));
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public NavigableMap subMap(Cut cut, boolean z10, Cut cut2, boolean z11) {
            return i(Range.range(cut, BoundType.forBoolean(z10), cut2, BoundType.forBoolean(z11)));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            if (this.f30741b.equals(Range.all())) {
                return this.f30740a.isEmpty();
            }
            return !a().hasNext();
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public NavigableMap tailMap(Cut cut, boolean z10) {
            return i(Range.downTo(cut, BoundType.forBoolean(z10)));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f30741b.equals(Range.all()) ? this.f30740a.size() : Iterators.y(a());
        }
    }

    private static final class e extends com.google.common.collect.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Range f30746a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Range f30747b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final NavigableMap f30748c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final NavigableMap f30749d;

        class a extends AbstractIterator {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Iterator f30750c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Cut f30751d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ e f30752e;

            a(e eVar, Iterator it, Cut cut) {
                this.f30750c = it;
                this.f30751d = cut;
                this.f30752e = eVar;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public Map.Entry a() {
                if (!this.f30750c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f30750c.next();
                if (this.f30751d.isLessThan(range.lowerBound)) {
                    return (Map.Entry) b();
                }
                Range rangeIntersection = range.intersection(this.f30752e.f30747b);
                return Maps.i(rangeIntersection.lowerBound, rangeIntersection);
            }
        }

        class b extends AbstractIterator {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Iterator f30753c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ e f30754d;

            b(e eVar, Iterator it) {
                this.f30753c = it;
                this.f30754d = eVar;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public Map.Entry a() {
                if (!this.f30753c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f30753c.next();
                if (this.f30754d.f30747b.lowerBound.compareTo((Cut) range.upperBound) >= 0) {
                    return (Map.Entry) b();
                }
                Range rangeIntersection = range.intersection(this.f30754d.f30747b);
                return this.f30754d.f30746a.contains(rangeIntersection.lowerBound) ? Maps.i(rangeIntersection.lowerBound, rangeIntersection) : (Map.Entry) b();
            }
        }

        private e(Range range, Range range2, NavigableMap navigableMap) {
            this.f30746a = (Range) com.google.common.base.m.o(range);
            this.f30747b = (Range) com.google.common.base.m.o(range2);
            this.f30748c = (NavigableMap) com.google.common.base.m.o(navigableMap);
            this.f30749d = new d(navigableMap);
        }

        private NavigableMap j(Range range) {
            return !range.isConnected(this.f30746a) ? ImmutableSortedMap.of() : new e(this.f30746a.intersection(range), this.f30747b, this.f30748c);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // com.google.common.collect.Maps.k
        Iterator a() {
            Iterator it;
            if (!this.f30747b.isEmpty() && !this.f30746a.upperBound.isLessThan(this.f30747b.lowerBound)) {
                if (this.f30746a.lowerBound.isLessThan(this.f30747b.lowerBound)) {
                    it = this.f30749d.tailMap(this.f30747b.lowerBound, false).values().iterator();
                } else {
                    it = this.f30748c.tailMap((Cut) this.f30746a.lowerBound.endpoint(), this.f30746a.lowerBoundType() == BoundType.CLOSED).values().iterator();
                }
                return new a(this, it, (Cut) Ordering.natural().min(this.f30746a.upperBound, Cut.belowValue(this.f30747b.upperBound)));
            }
            return Iterators.h();
        }

        @Override // com.google.common.collect.e
        Iterator c() {
            if (this.f30747b.isEmpty()) {
                return Iterators.h();
            }
            Cut cut = (Cut) Ordering.natural().min(this.f30746a.upperBound, Cut.belowValue(this.f30747b.upperBound));
            return new b(this, this.f30748c.headMap((Cut) cut.endpoint(), cut.typeAsUpperBound() == BoundType.CLOSED).descendingMap().values().iterator());
        }

        @Override // java.util.SortedMap
        public Comparator comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Range get(Object obj) {
            if (obj instanceof Cut) {
                try {
                    Cut cut = (Cut) obj;
                    if (this.f30746a.contains(cut) && cut.compareTo((Cut) this.f30747b.lowerBound) >= 0 && cut.compareTo((Cut) this.f30747b.upperBound) < 0) {
                        if (cut.equals(this.f30747b.lowerBound)) {
                            Range range = (Range) Maps.E(this.f30748c.floorEntry(cut));
                            if (range != null && range.upperBound.compareTo((Cut) this.f30747b.lowerBound) > 0) {
                                return range.intersection(this.f30747b);
                            }
                        } else {
                            Range range2 = (Range) this.f30748c.get(cut);
                            if (range2 != null) {
                                return range2.intersection(this.f30747b);
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public NavigableMap headMap(Cut cut, boolean z10) {
            return j(Range.upTo(cut, BoundType.forBoolean(z10)));
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public NavigableMap subMap(Cut cut, boolean z10, Cut cut2, boolean z11) {
            return j(Range.range(cut, BoundType.forBoolean(z10), cut2, BoundType.forBoolean(z11)));
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public NavigableMap tailMap(Cut cut, boolean z10) {
            return j(Range.downTo(cut, BoundType.forBoolean(z10)));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return Iterators.y(a());
        }
    }

    private TreeRangeSet(NavigableMap<Cut<C>, Range<C>> navigableMap) {
        this.rangesByLowerBound = navigableMap;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create() {
        return new TreeRangeSet<>(new TreeMap());
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(u3 u3Var) {
        TreeRangeSet<C> treeRangeSetCreate = create();
        treeRangeSetCreate.addAll(u3Var);
        return treeRangeSetCreate;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(Iterable<Range<C>> iterable) {
        TreeRangeSet<C> treeRangeSetCreate = create();
        treeRangeSetCreate.addAll(iterable);
        return treeRangeSetCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Range<C> rangeEnclosing(Range<C> range) {
        com.google.common.base.m.o(range);
        Map.Entry<Cut<C>, Range<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        if (entryFloorEntry == null || !entryFloorEntry.getValue().encloses(range)) {
            return null;
        }
        return entryFloorEntry.getValue();
    }

    private void replaceRangeWithSameLowerBound(Range<C> range) {
        if (range.isEmpty()) {
            this.rangesByLowerBound.remove(range.lowerBound);
        } else {
            this.rangesByLowerBound.put(range.lowerBound, range);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.common.collect.f
    public void add(Range<C> range) {
        com.google.common.base.m.o(range);
        if (range.isEmpty()) {
            return;
        }
        Cut<C> cut = range.lowerBound;
        Cut<C> cut2 = range.upperBound;
        Map.Entry<Cut<C>, Range<C>> entryLowerEntry = this.rangesByLowerBound.lowerEntry(cut);
        if (entryLowerEntry != null) {
            Range<C> value = entryLowerEntry.getValue();
            if (value.upperBound.compareTo((Cut) cut) >= 0) {
                if (value.upperBound.compareTo((Cut) cut2) >= 0) {
                    cut2 = value.upperBound;
                }
                cut = value.lowerBound;
            }
        }
        Map.Entry<Cut<C>, Range<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(cut2);
        if (entryFloorEntry != null) {
            Range<C> value2 = entryFloorEntry.getValue();
            if (value2.upperBound.compareTo((Cut) cut2) >= 0) {
                cut2 = value2.upperBound;
            }
        }
        this.rangesByLowerBound.subMap(cut, cut2).clear();
        replaceRangeWithSameLowerBound(Range.create(cut, cut2));
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ void addAll(u3 u3Var) {
        super.addAll(u3Var);
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ void addAll(Iterable iterable) {
        super.addAll(iterable);
    }

    public Set<Range<C>> asDescendingSetOfRanges() {
        Set<Range<C>> set = this.asDescendingSetOfRanges;
        if (set != null) {
            return set;
        }
        b bVar = new b(this.rangesByLowerBound.descendingMap().values());
        this.asDescendingSetOfRanges = bVar;
        return bVar;
    }

    @Override // com.google.common.collect.u3
    public Set<Range<C>> asRanges() {
        Set<Range<C>> set = this.asRanges;
        if (set != null) {
            return set;
        }
        b bVar = new b(this.rangesByLowerBound.values());
        this.asRanges = bVar;
        return bVar;
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.u3
    public u3 complement() {
        u3 u3Var = this.complement;
        if (u3Var != null) {
            return u3Var;
        }
        Complement complement = new Complement();
        this.complement = complement;
        return complement;
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    @Override // com.google.common.collect.f, com.google.common.collect.u3
    public boolean encloses(Range<C> range) {
        com.google.common.base.m.o(range);
        Map.Entry<Cut<C>, Range<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        return entryFloorEntry != null && entryFloorEntry.getValue().encloses(range);
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ boolean enclosesAll(u3 u3Var) {
        return super.enclosesAll(u3Var);
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ boolean enclosesAll(Iterable iterable) {
        return super.enclosesAll(iterable);
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    public boolean intersects(Range<C> range) {
        com.google.common.base.m.o(range);
        Map.Entry<Cut<C>, Range<C>> entryCeilingEntry = this.rangesByLowerBound.ceilingEntry(range.lowerBound);
        if (entryCeilingEntry != null && entryCeilingEntry.getValue().isConnected(range) && !entryCeilingEntry.getValue().intersection(range).isEmpty()) {
            return true;
        }
        Map.Entry<Cut<C>, Range<C>> entryLowerEntry = this.rangesByLowerBound.lowerEntry(range.lowerBound);
        return (entryLowerEntry == null || !entryLowerEntry.getValue().isConnected(range) || entryLowerEntry.getValue().intersection(range).isEmpty()) ? false : true;
    }

    @Override // com.google.common.collect.f, com.google.common.collect.u3
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.f
    public Range<C> rangeContaining(C c11) {
        com.google.common.base.m.o(c11);
        Map.Entry<Cut<C>, Range<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(Cut.belowValue(c11));
        if (entryFloorEntry == null || !entryFloorEntry.getValue().contains(c11)) {
            return null;
        }
        return entryFloorEntry.getValue();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.common.collect.f
    public void remove(Range<C> range) {
        com.google.common.base.m.o(range);
        if (range.isEmpty()) {
            return;
        }
        Map.Entry<Cut<C>, Range<C>> entryLowerEntry = this.rangesByLowerBound.lowerEntry(range.lowerBound);
        if (entryLowerEntry != null) {
            Range<C> value = entryLowerEntry.getValue();
            if (value.upperBound.compareTo((Cut) range.lowerBound) >= 0) {
                if (range.hasUpperBound() && value.upperBound.compareTo((Cut) range.upperBound) >= 0) {
                    replaceRangeWithSameLowerBound(Range.create(range.upperBound, value.upperBound));
                }
                replaceRangeWithSameLowerBound(Range.create(value.lowerBound, range.lowerBound));
            }
        }
        Map.Entry<Cut<C>, Range<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(range.upperBound);
        if (entryFloorEntry != null) {
            Range<C> value2 = entryFloorEntry.getValue();
            if (range.hasUpperBound() && value2.upperBound.compareTo((Cut) range.upperBound) >= 0) {
                replaceRangeWithSameLowerBound(Range.create(range.upperBound, value2.upperBound));
            }
        }
        this.rangesByLowerBound.subMap(range.lowerBound, range.upperBound).clear();
    }

    @Override // com.google.common.collect.f, com.google.common.collect.u3
    public /* bridge */ /* synthetic */ void removeAll(u3 u3Var) {
        super.removeAll(u3Var);
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ void removeAll(Iterable iterable) {
        super.removeAll(iterable);
    }

    public Range<C> span() {
        Map.Entry<Cut<C>, Range<C>> entryFirstEntry = this.rangesByLowerBound.firstEntry();
        Map.Entry<Cut<C>, Range<C>> entryLastEntry = this.rangesByLowerBound.lastEntry();
        if (entryFirstEntry == null || entryLastEntry == null) {
            throw new NoSuchElementException();
        }
        return Range.create(entryFirstEntry.getValue().lowerBound, entryLastEntry.getValue().upperBound);
    }

    public u3 subRangeSet(Range<C> range) {
        return range.equals(Range.all()) ? this : new SubRangeSet(range);
    }
}
