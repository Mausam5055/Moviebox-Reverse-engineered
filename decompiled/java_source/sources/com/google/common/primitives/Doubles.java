package com.google.common.primitives;

import com.google.common.base.m;
import com.transsion.gslb.Utils;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Doubles extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Pattern f30915a = c();

    private static class DoubleArrayAsList extends AbstractList<Double> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final double[] array;
        final int end;
        final int start;

        DoubleArrayAsList(double[] dArr) {
            this(dArr, 0, dArr.length);
        }

        DoubleArrayAsList(double[] dArr, int i11, int i12) {
            this.array = dArr;
            this.start = i11;
            this.end = i12;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Double) && Doubles.e(this.array, ((Double) obj).doubleValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DoubleArrayAsList)) {
                return super.equals(obj);
            }
            DoubleArrayAsList doubleArrayAsList = (DoubleArrayAsList) obj;
            int size = size();
            if (doubleArrayAsList.size() != size) {
                return false;
            }
            for (int i11 = 0; i11 < size; i11++) {
                if (this.array[this.start + i11] != doubleArrayAsList.array[doubleArrayAsList.start + i11]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public Double get(int i11) {
            m.m(i11, size());
            return Double.valueOf(this.array[this.start + i11]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iD = 1;
            for (int i11 = this.start; i11 < this.end; i11++) {
                iD = (iD * 31) + Doubles.d(this.array[i11]);
            }
            return iD;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iE;
            if (!(obj instanceof Double) || (iE = Doubles.e(this.array, ((Double) obj).doubleValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iE - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iG;
            if (!(obj instanceof Double) || (iG = Doubles.g(this.array, ((Double) obj).doubleValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iG - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public Double set(int i11, Double d11) {
            m.m(i11, size());
            double[] dArr = this.array;
            int i12 = this.start;
            double d12 = dArr[i12 + i11];
            dArr[i12 + i11] = ((Double) m.o(d11)).doubleValue();
            return Double.valueOf(d12);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Double> subList(int i11, int i12) {
            m.t(i11, i12, size());
            if (i11 == i12) {
                return Collections.emptyList();
            }
            double[] dArr = this.array;
            int i13 = this.start;
            return new DoubleArrayAsList(dArr, i11 + i13, i13 + i12);
        }

        double[] toDoubleArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 12);
            sb2.append('[');
            sb2.append(this.array[this.start]);
            int i11 = this.start;
            while (true) {
                i11++;
                if (i11 >= this.end) {
                    sb2.append(']');
                    return sb2.toString();
                }
                sb2.append(", ");
                sb2.append(this.array[i11]);
            }
        }
    }

    private enum LexicographicalComparator implements Comparator<double[]> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(double[] dArr, double[] dArr2) {
            int iMin = Math.min(dArr.length, dArr2.length);
            for (int i11 = 0; i11 < iMin; i11++) {
                int iCompare = Double.compare(dArr[i11], dArr2[i11]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return dArr.length - dArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Doubles.lexicographicalComparator()";
        }
    }

    private static Pattern c() {
        return Pattern.compile(("[+-]?(?:NaN|Infinity|" + ("(?:\\d+#(?:\\.\\d*#)?|\\.\\d+#)(?:[eE][+-]?\\d+#)?[fFdD]?") + "|" + ("0[xX](?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)[pP][+-]?\\d+#[fFdD]?") + ")").replace(Utils.SEPARATOR, "+"));
    }

    public static int d(double d11) {
        return Double.valueOf(d11).hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int e(double[] dArr, double d11, int i11, int i12) {
        while (i11 < i12) {
            if (dArr[i11] == d11) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static boolean f(double d11) {
        return Double.NEGATIVE_INFINITY < d11 && d11 < Double.POSITIVE_INFINITY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(double[] dArr, double d11, int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            if (dArr[i13] == d11) {
                return i13;
            }
        }
        return -1;
    }

    public static double[] h(Collection collection) {
        if (collection instanceof DoubleArrayAsList) {
            return ((DoubleArrayAsList) collection).toDoubleArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        double[] dArr = new double[length];
        for (int i11 = 0; i11 < length; i11++) {
            dArr[i11] = ((Number) m.o(array[i11])).doubleValue();
        }
        return dArr;
    }
}
