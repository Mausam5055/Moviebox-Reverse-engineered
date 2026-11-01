package t9;

import java.util.Arrays;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public interface t {

    public static class a implements t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Random f76145a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f76146b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int[] f76147c;

        public a(int i11) {
            this(i11, new Random());
        }

        private a(int i11, Random random) {
            this(b(i11, random), random);
        }

        private a(int[] iArr, Random random) {
            this.f76146b = iArr;
            this.f76145a = random;
            this.f76147c = new int[iArr.length];
            for (int i11 = 0; i11 < iArr.length; i11++) {
                this.f76147c[iArr[i11]] = i11;
            }
        }

        private static int[] b(int i11, Random random) {
            int[] iArr = new int[i11];
            int i12 = 0;
            while (i12 < i11) {
                int i13 = i12 + 1;
                int iNextInt = random.nextInt(i13);
                iArr[i12] = iArr[iNextInt];
                iArr[iNextInt] = i12;
                i12 = i13;
            }
            return iArr;
        }

        @Override // t9.t
        public t a(int i11, int i12) {
            int i13 = i12 - i11;
            int[] iArr = new int[this.f76146b.length - i13];
            int i14 = 0;
            int i15 = 0;
            while (true) {
                int[] iArr2 = this.f76146b;
                if (i14 >= iArr2.length) {
                    return new a(iArr, new Random(this.f76145a.nextLong()));
                }
                int i16 = iArr2[i14];
                if (i16 < i11 || i16 >= i12) {
                    int i17 = i14 - i15;
                    if (i16 >= i11) {
                        i16 -= i13;
                    }
                    iArr[i17] = i16;
                } else {
                    i15++;
                }
                i14++;
            }
        }

        @Override // t9.t
        public t cloneAndClear() {
            return new a(0, new Random(this.f76145a.nextLong()));
        }

        @Override // t9.t
        public t cloneAndInsert(int i11, int i12) {
            int[] iArr = new int[i12];
            int[] iArr2 = new int[i12];
            int i13 = 0;
            int i14 = 0;
            while (i14 < i12) {
                iArr[i14] = this.f76145a.nextInt(this.f76146b.length + 1);
                int i15 = i14 + 1;
                int iNextInt = this.f76145a.nextInt(i15);
                iArr2[i14] = iArr2[iNextInt];
                iArr2[iNextInt] = i14 + i11;
                i14 = i15;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f76146b.length + i12];
            int i16 = 0;
            int i17 = 0;
            while (true) {
                int[] iArr4 = this.f76146b;
                if (i13 >= iArr4.length + i12) {
                    return new a(iArr3, new Random(this.f76145a.nextLong()));
                }
                if (i16 >= i12 || i17 != iArr[i16]) {
                    int i18 = i17 + 1;
                    int i19 = iArr4[i17];
                    iArr3[i13] = i19;
                    if (i19 >= i11) {
                        iArr3[i13] = i19 + i12;
                    }
                    i17 = i18;
                } else {
                    iArr3[i13] = iArr2[i16];
                    i16++;
                }
                i13++;
            }
        }

        @Override // t9.t
        public int getFirstIndex() {
            int[] iArr = this.f76146b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // t9.t
        public int getLastIndex() {
            int[] iArr = this.f76146b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // t9.t
        public int getLength() {
            return this.f76146b.length;
        }

        @Override // t9.t
        public int getNextIndex(int i11) {
            int i12 = this.f76147c[i11] + 1;
            int[] iArr = this.f76146b;
            if (i12 < iArr.length) {
                return iArr[i12];
            }
            return -1;
        }

        @Override // t9.t
        public int getPreviousIndex(int i11) {
            int i12 = this.f76147c[i11] - 1;
            if (i12 >= 0) {
                return this.f76146b[i12];
            }
            return -1;
        }
    }

    t a(int i11, int i12);

    t cloneAndClear();

    t cloneAndInsert(int i11, int i12);

    int getFirstIndex();

    int getLastIndex();

    int getLength();

    int getNextIndex(int i11);

    int getPreviousIndex(int i11);
}
