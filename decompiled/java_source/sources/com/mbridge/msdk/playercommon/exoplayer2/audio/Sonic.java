package com.mbridge.msdk.playercommon.exoplayer2.audio;

import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
final class Sonic {
    private static final int AMDF_FREQUENCY = 4000;
    private static final int MAXIMUM_PITCH = 400;
    private static final int MINIMUM_PITCH = 65;
    private final int channelCount;
    private final short[] downSampleBuffer;
    private short[] inputBuffer;
    private int inputFrameCount;
    private final int inputSampleRateHz;
    private int maxDiff;
    private final int maxPeriod;
    private final int maxRequiredFrameCount;
    private int minDiff;
    private final int minPeriod;
    private int newRatePosition;
    private int oldRatePosition;
    private short[] outputBuffer;
    private int outputFrameCount;
    private final float pitch;
    private short[] pitchBuffer;
    private int pitchFrameCount;
    private int prevMinDiff;
    private int prevPeriod;
    private final float rate;
    private int remainingInputToCopyFrameCount;
    private final float speed;

    public Sonic(int i11, int i12, float f11, float f12, int i13) {
        this.inputSampleRateHz = i11;
        this.channelCount = i12;
        this.speed = f11;
        this.pitch = f12;
        this.rate = i11 / i13;
        this.minPeriod = i11 / 400;
        int i14 = i11 / 65;
        this.maxPeriod = i14;
        int i15 = i14 * 2;
        this.maxRequiredFrameCount = i15;
        this.downSampleBuffer = new short[i15];
        int i16 = i15 * i12;
        this.inputBuffer = new short[i16];
        this.outputBuffer = new short[i16];
        this.pitchBuffer = new short[i16];
    }

    private void adjustRate(float f11, int i11) {
        int i12;
        int i13;
        if (this.outputFrameCount == i11) {
            return;
        }
        int i14 = this.inputSampleRateHz;
        int i15 = (int) (i14 / f11);
        while (true) {
            if (i15 <= 16384 && i14 <= 16384) {
                break;
            }
            i15 /= 2;
            i14 /= 2;
        }
        moveNewSamplesToPitchBuffer(i11);
        int i16 = 0;
        while (true) {
            int i17 = this.pitchFrameCount - 1;
            if (i16 >= i17) {
                removePitchFrames(i17);
                return;
            }
            while (true) {
                i12 = this.oldRatePosition + 1;
                int i18 = i12 * i15;
                i13 = this.newRatePosition;
                if (i18 <= i13 * i14) {
                    break;
                }
                this.outputBuffer = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, 1);
                int i19 = 0;
                while (true) {
                    int i20 = this.channelCount;
                    if (i19 < i20) {
                        this.outputBuffer[(this.outputFrameCount * i20) + i19] = interpolate(this.pitchBuffer, (i20 * i16) + i19, i14, i15);
                        i19++;
                    }
                }
                this.newRatePosition++;
                this.outputFrameCount++;
            }
            this.oldRatePosition = i12;
            if (i12 == i14) {
                this.oldRatePosition = 0;
                Assertions.checkState(i13 == i15);
                this.newRatePosition = 0;
            }
            i16++;
        }
    }

    private void changeSpeed(float f11) {
        int iSkipPitchPeriod;
        int i11 = this.inputFrameCount;
        if (i11 < this.maxRequiredFrameCount) {
            return;
        }
        int i12 = 0;
        do {
            if (this.remainingInputToCopyFrameCount > 0) {
                iSkipPitchPeriod = copyInputToOutput(i12);
            } else {
                int iFindPitchPeriod = findPitchPeriod(this.inputBuffer, i12);
                iSkipPitchPeriod = ((double) f11) > 1.0d ? iFindPitchPeriod + skipPitchPeriod(this.inputBuffer, i12, f11, iFindPitchPeriod) : insertPitchPeriod(this.inputBuffer, i12, f11, iFindPitchPeriod);
            }
            i12 += iSkipPitchPeriod;
        } while (this.maxRequiredFrameCount + i12 <= i11);
        removeProcessedInputFrames(i12);
    }

    private int copyInputToOutput(int i11) {
        int iMin = Math.min(this.maxRequiredFrameCount, this.remainingInputToCopyFrameCount);
        copyToOutput(this.inputBuffer, i11, iMin);
        this.remainingInputToCopyFrameCount -= iMin;
        return iMin;
    }

    private void copyToOutput(short[] sArr, int i11, int i12) {
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i12);
        this.outputBuffer = sArrEnsureSpaceForAdditionalFrames;
        int i13 = this.channelCount;
        System.arraycopy(sArr, i11 * i13, sArrEnsureSpaceForAdditionalFrames, this.outputFrameCount * i13, i13 * i12);
        this.outputFrameCount += i12;
    }

    private void downSampleInput(short[] sArr, int i11, int i12) {
        int i13 = this.maxRequiredFrameCount / i12;
        int i14 = this.channelCount;
        int i15 = i12 * i14;
        int i16 = i11 * i14;
        for (int i17 = 0; i17 < i13; i17++) {
            int i18 = 0;
            for (int i19 = 0; i19 < i15; i19++) {
                i18 += sArr[(i17 * i15) + i16 + i19];
            }
            this.downSampleBuffer[i17] = (short) (i18 / i15);
        }
    }

    private short[] ensureSpaceForAdditionalFrames(short[] sArr, int i11, int i12) {
        int length = sArr.length;
        int i13 = this.channelCount;
        int i14 = length / i13;
        return i11 + i12 <= i14 ? sArr : Arrays.copyOf(sArr, (((i14 * 3) / 2) + i12) * i13);
    }

    private int findPitchPeriod(short[] sArr, int i11) {
        int iFindPitchPeriodInRange;
        int i12 = this.inputSampleRateHz;
        int i13 = i12 > 4000 ? i12 / 4000 : 1;
        if (this.channelCount == 1 && i13 == 1) {
            iFindPitchPeriodInRange = findPitchPeriodInRange(sArr, i11, this.minPeriod, this.maxPeriod);
        } else {
            downSampleInput(sArr, i11, i13);
            int iFindPitchPeriodInRange2 = findPitchPeriodInRange(this.downSampleBuffer, 0, this.minPeriod / i13, this.maxPeriod / i13);
            if (i13 != 1) {
                int i14 = iFindPitchPeriodInRange2 * i13;
                int i15 = i13 * 4;
                int i16 = i14 - i15;
                int i17 = i14 + i15;
                int i18 = this.minPeriod;
                if (i16 < i18) {
                    i16 = i18;
                }
                int i19 = this.maxPeriod;
                if (i17 > i19) {
                    i17 = i19;
                }
                if (this.channelCount == 1) {
                    iFindPitchPeriodInRange = findPitchPeriodInRange(sArr, i11, i16, i17);
                } else {
                    downSampleInput(sArr, i11, 1);
                    iFindPitchPeriodInRange = findPitchPeriodInRange(this.downSampleBuffer, 0, i16, i17);
                }
            } else {
                iFindPitchPeriodInRange = iFindPitchPeriodInRange2;
            }
        }
        int i20 = previousPeriodBetter(this.minDiff, this.maxDiff) ? this.prevPeriod : iFindPitchPeriodInRange;
        this.prevMinDiff = this.minDiff;
        this.prevPeriod = iFindPitchPeriodInRange;
        return i20;
    }

    private int findPitchPeriodInRange(short[] sArr, int i11, int i12, int i13) {
        int i14 = i11 * this.channelCount;
        int i15 = 255;
        int i16 = 1;
        int i17 = 0;
        int i18 = 0;
        while (i12 <= i13) {
            int iAbs = 0;
            for (int i19 = 0; i19 < i12; i19++) {
                iAbs += Math.abs(sArr[i14 + i19] - sArr[(i14 + i12) + i19]);
            }
            if (iAbs * i17 < i16 * i12) {
                i17 = i12;
                i16 = iAbs;
            }
            if (iAbs * i15 > i18 * i12) {
                i15 = i12;
                i18 = iAbs;
            }
            i12++;
        }
        this.minDiff = i16 / i17;
        this.maxDiff = i18 / i15;
        return i17;
    }

    private int insertPitchPeriod(short[] sArr, int i11, float f11, int i12) {
        int i13;
        if (f11 < 0.5f) {
            i13 = (int) ((i12 * f11) / (1.0f - f11));
        } else {
            this.remainingInputToCopyFrameCount = (int) ((i12 * ((2.0f * f11) - 1.0f)) / (1.0f - f11));
            i13 = i12;
        }
        int i14 = i12 + i13;
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i14);
        this.outputBuffer = sArrEnsureSpaceForAdditionalFrames;
        int i15 = this.channelCount;
        System.arraycopy(sArr, i11 * i15, sArrEnsureSpaceForAdditionalFrames, this.outputFrameCount * i15, i15 * i12);
        overlapAdd(i13, this.channelCount, this.outputBuffer, this.outputFrameCount + i12, sArr, i11 + i12, sArr, i11);
        this.outputFrameCount += i14;
        return i13;
    }

    private short interpolate(short[] sArr, int i11, int i12, int i13) {
        short s11 = sArr[i11];
        short s12 = sArr[i11 + this.channelCount];
        int i14 = this.newRatePosition * i12;
        int i15 = this.oldRatePosition;
        int i16 = i15 * i13;
        int i17 = (i15 + 1) * i13;
        int i18 = i17 - i14;
        int i19 = i17 - i16;
        return (short) (((s11 * i18) + ((i19 - i18) * s12)) / i19);
    }

    private void moveNewSamplesToPitchBuffer(int i11) {
        int i12 = this.outputFrameCount - i11;
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.pitchBuffer, this.pitchFrameCount, i12);
        this.pitchBuffer = sArrEnsureSpaceForAdditionalFrames;
        short[] sArr = this.outputBuffer;
        int i13 = this.channelCount;
        System.arraycopy(sArr, i11 * i13, sArrEnsureSpaceForAdditionalFrames, this.pitchFrameCount * i13, i13 * i12);
        this.outputFrameCount = i11;
        this.pitchFrameCount += i12;
    }

    private static void overlapAdd(int i11, int i12, short[] sArr, int i13, short[] sArr2, int i14, short[] sArr3, int i15) {
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = (i13 * i12) + i16;
            int i18 = (i15 * i12) + i16;
            int i19 = (i14 * i12) + i16;
            for (int i20 = 0; i20 < i11; i20++) {
                sArr[i17] = (short) (((sArr2[i19] * (i11 - i20)) + (sArr3[i18] * i20)) / i11);
                i17 += i12;
                i19 += i12;
                i18 += i12;
            }
        }
    }

    private boolean previousPeriodBetter(int i11, int i12) {
        return i11 != 0 && this.prevPeriod != 0 && i12 <= i11 * 3 && i11 * 2 > this.prevMinDiff * 3;
    }

    private void processStreamInput() {
        int i11 = this.outputFrameCount;
        float f11 = this.speed;
        float f12 = this.pitch;
        float f13 = f11 / f12;
        float f14 = this.rate * f12;
        double d11 = f13;
        if (d11 > 1.00001d || d11 < 0.99999d) {
            changeSpeed(f13);
        } else {
            copyToOutput(this.inputBuffer, 0, this.inputFrameCount);
            this.inputFrameCount = 0;
        }
        if (f14 != 1.0f) {
            adjustRate(f14, i11);
        }
    }

    private void removePitchFrames(int i11) {
        if (i11 == 0) {
            return;
        }
        short[] sArr = this.pitchBuffer;
        int i12 = this.channelCount;
        System.arraycopy(sArr, i11 * i12, sArr, 0, (this.pitchFrameCount - i11) * i12);
        this.pitchFrameCount -= i11;
    }

    private void removeProcessedInputFrames(int i11) {
        int i12 = this.inputFrameCount - i11;
        short[] sArr = this.inputBuffer;
        int i13 = this.channelCount;
        System.arraycopy(sArr, i11 * i13, sArr, 0, i13 * i12);
        this.inputFrameCount = i12;
    }

    private int skipPitchPeriod(short[] sArr, int i11, float f11, int i12) {
        int i13;
        if (f11 >= 2.0f) {
            i13 = (int) (i12 / (f11 - 1.0f));
        } else {
            this.remainingInputToCopyFrameCount = (int) ((i12 * (2.0f - f11)) / (f11 - 1.0f));
            i13 = i12;
        }
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i13);
        this.outputBuffer = sArrEnsureSpaceForAdditionalFrames;
        overlapAdd(i13, this.channelCount, sArrEnsureSpaceForAdditionalFrames, this.outputFrameCount, sArr, i11, sArr, i11 + i12);
        this.outputFrameCount += i13;
        return i13;
    }

    public void flush() {
        this.inputFrameCount = 0;
        this.outputFrameCount = 0;
        this.pitchFrameCount = 0;
        this.oldRatePosition = 0;
        this.newRatePosition = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.prevPeriod = 0;
        this.prevMinDiff = 0;
        this.minDiff = 0;
        this.maxDiff = 0;
    }

    public int getFramesAvailable() {
        return this.outputFrameCount;
    }

    public void getOutput(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.channelCount, this.outputFrameCount);
        shortBuffer.put(this.outputBuffer, 0, this.channelCount * iMin);
        int i11 = this.outputFrameCount - iMin;
        this.outputFrameCount = i11;
        short[] sArr = this.outputBuffer;
        int i12 = this.channelCount;
        System.arraycopy(sArr, iMin * i12, sArr, 0, i11 * i12);
    }

    public void queueEndOfStream() {
        int i11;
        int i12 = this.inputFrameCount;
        float f11 = this.speed;
        float f12 = this.pitch;
        int i13 = this.outputFrameCount + ((int) ((((i12 / (f11 / f12)) + this.pitchFrameCount) / (this.rate * f12)) + 0.5f));
        this.inputBuffer = ensureSpaceForAdditionalFrames(this.inputBuffer, i12, (this.maxRequiredFrameCount * 2) + i12);
        int i14 = 0;
        while (true) {
            i11 = this.maxRequiredFrameCount * 2;
            int i15 = this.channelCount;
            if (i14 >= i11 * i15) {
                break;
            }
            this.inputBuffer[(i15 * i12) + i14] = 0;
            i14++;
        }
        this.inputFrameCount += i11;
        processStreamInput();
        if (this.outputFrameCount > i13) {
            this.outputFrameCount = i13;
        }
        this.inputFrameCount = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.pitchFrameCount = 0;
    }

    public void queueInput(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i11 = this.channelCount;
        int i12 = iRemaining / i11;
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.inputBuffer, this.inputFrameCount, i12);
        this.inputBuffer = sArrEnsureSpaceForAdditionalFrames;
        shortBuffer.get(sArrEnsureSpaceForAdditionalFrames, this.inputFrameCount * this.channelCount, ((i11 * i12) * 2) / 2);
        this.inputFrameCount += i12;
        processStreamInput();
    }
}
