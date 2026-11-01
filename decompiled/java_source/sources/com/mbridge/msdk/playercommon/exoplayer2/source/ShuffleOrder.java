package com.mbridge.msdk.playercommon.exoplayer2.source;

import java.util.Arrays;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public interface ShuffleOrder {

    public static class DefaultShuffleOrder implements ShuffleOrder {
        private final int[] indexInShuffled;
        private final Random random;
        private final int[] shuffled;

        public DefaultShuffleOrder(int i11) {
            this(i11, new Random());
        }

        public DefaultShuffleOrder(int i11, long j11) {
            this(i11, new Random(j11));
        }

        private DefaultShuffleOrder(int i11, Random random) {
            this(createShuffledList(i11, random), random);
        }

        private DefaultShuffleOrder(int[] iArr, Random random) {
            this.shuffled = iArr;
            this.random = random;
            this.indexInShuffled = new int[iArr.length];
            for (int i11 = 0; i11 < iArr.length; i11++) {
                this.indexInShuffled[iArr[i11]] = i11;
            }
        }

        private static int[] createShuffledList(int i11, Random random) {
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

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public ShuffleOrder cloneAndClear() {
            return new DefaultShuffleOrder(0, new Random(this.random.nextLong()));
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public ShuffleOrder cloneAndInsert(int i11, int i12) {
            int[] iArr = new int[i12];
            int[] iArr2 = new int[i12];
            int i13 = 0;
            int i14 = 0;
            while (i14 < i12) {
                iArr[i14] = this.random.nextInt(this.shuffled.length + 1);
                int i15 = i14 + 1;
                int iNextInt = this.random.nextInt(i15);
                iArr2[i14] = iArr2[iNextInt];
                iArr2[iNextInt] = i14 + i11;
                i14 = i15;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.shuffled.length + i12];
            int i16 = 0;
            int i17 = 0;
            while (true) {
                int[] iArr4 = this.shuffled;
                if (i13 >= iArr4.length + i12) {
                    return new DefaultShuffleOrder(iArr3, new Random(this.random.nextLong()));
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

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public ShuffleOrder cloneAndRemove(int i11) {
            int[] iArr = new int[this.shuffled.length - 1];
            int i12 = 0;
            boolean z10 = false;
            while (true) {
                int[] iArr2 = this.shuffled;
                if (i12 >= iArr2.length) {
                    return new DefaultShuffleOrder(iArr, new Random(this.random.nextLong()));
                }
                int i13 = iArr2[i12];
                if (i13 == i11) {
                    z10 = true;
                } else {
                    int i14 = z10 ? i12 - 1 : i12;
                    if (i13 > i11) {
                        i13--;
                    }
                    iArr[i14] = i13;
                }
                i12++;
            }
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public int getFirstIndex() {
            int[] iArr = this.shuffled;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public int getLastIndex() {
            int[] iArr = this.shuffled;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public int getLength() {
            return this.shuffled.length;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public int getNextIndex(int i11) {
            int i12 = this.indexInShuffled[i11] + 1;
            int[] iArr = this.shuffled;
            if (i12 < iArr.length) {
                return iArr[i12];
            }
            return -1;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public int getPreviousIndex(int i11) {
            int i12 = this.indexInShuffled[i11] - 1;
            if (i12 >= 0) {
                return this.shuffled[i12];
            }
            return -1;
        }
    }

    public static final class UnshuffledShuffleOrder implements ShuffleOrder {
        private final int length;

        public UnshuffledShuffleOrder(int i11) {
            this.length = i11;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public ShuffleOrder cloneAndClear() {
            return new UnshuffledShuffleOrder(0);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public ShuffleOrder cloneAndInsert(int i11, int i12) {
            return new UnshuffledShuffleOrder(this.length + i12);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public ShuffleOrder cloneAndRemove(int i11) {
            return new UnshuffledShuffleOrder(this.length - 1);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public int getFirstIndex() {
            return this.length > 0 ? 0 : -1;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public int getLastIndex() {
            int i11 = this.length;
            if (i11 > 0) {
                return i11 - 1;
            }
            return -1;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public int getLength() {
            return this.length;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public int getNextIndex(int i11) {
            int i12 = i11 + 1;
            if (i12 < this.length) {
                return i12;
            }
            return -1;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.ShuffleOrder
        public int getPreviousIndex(int i11) {
            int i12 = i11 - 1;
            if (i12 >= 0) {
                return i12;
            }
            return -1;
        }
    }

    ShuffleOrder cloneAndClear();

    ShuffleOrder cloneAndInsert(int i11, int i12);

    ShuffleOrder cloneAndRemove(int i11);

    int getFirstIndex();

    int getLastIndex();

    int getLength();

    int getNextIndex(int i11);

    int getPreviousIndex(int i11);
}
