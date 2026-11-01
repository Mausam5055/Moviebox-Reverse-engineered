package com.mbridge.msdk.playercommon.exoplayer2.text.dvb;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Region;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.playercommon.exoplayer2.text.Cue;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableBitArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class DvbParser {
    private static final int DATA_TYPE_24_TABLE_DATA = 32;
    private static final int DATA_TYPE_28_TABLE_DATA = 33;
    private static final int DATA_TYPE_2BP_CODE_STRING = 16;
    private static final int DATA_TYPE_48_TABLE_DATA = 34;
    private static final int DATA_TYPE_4BP_CODE_STRING = 17;
    private static final int DATA_TYPE_8BP_CODE_STRING = 18;
    private static final int DATA_TYPE_END_LINE = 240;
    private static final int OBJECT_CODING_PIXELS = 0;
    private static final int OBJECT_CODING_STRING = 1;
    private static final int PAGE_STATE_NORMAL = 0;
    private static final int REGION_DEPTH_4_BIT = 2;
    private static final int REGION_DEPTH_8_BIT = 3;
    private static final int SEGMENT_TYPE_CLUT_DEFINITION = 18;
    private static final int SEGMENT_TYPE_DISPLAY_DEFINITION = 20;
    private static final int SEGMENT_TYPE_OBJECT_DATA = 19;
    private static final int SEGMENT_TYPE_PAGE_COMPOSITION = 16;
    private static final int SEGMENT_TYPE_REGION_COMPOSITION = 17;
    private static final String TAG = "DvbParser";
    private static final byte[] defaultMap2To4 = {0, 7, 8, 15};
    private static final byte[] defaultMap2To8 = {0, 119, -120, -1};
    private static final byte[] defaultMap4To8 = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private Bitmap bitmap;
    private final Canvas canvas;
    private final ClutDefinition defaultClutDefinition;
    private final DisplayDefinition defaultDisplayDefinition;
    private final Paint defaultPaint;
    private final Paint fillRegionPaint;
    private final SubtitleService subtitleService;

    private static final class ClutDefinition {
        public final int[] clutEntries2Bit;
        public final int[] clutEntries4Bit;
        public final int[] clutEntries8Bit;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        public final int f36788id;

        public ClutDefinition(int i11, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f36788id = i11;
            this.clutEntries2Bit = iArr;
            this.clutEntries4Bit = iArr2;
            this.clutEntries8Bit = iArr3;
        }
    }

    private static final class DisplayDefinition {
        public final int height;
        public final int horizontalPositionMaximum;
        public final int horizontalPositionMinimum;
        public final int verticalPositionMaximum;
        public final int verticalPositionMinimum;
        public final int width;

        public DisplayDefinition(int i11, int i12, int i13, int i14, int i15, int i16) {
            this.width = i11;
            this.height = i12;
            this.horizontalPositionMinimum = i13;
            this.horizontalPositionMaximum = i14;
            this.verticalPositionMinimum = i15;
            this.verticalPositionMaximum = i16;
        }
    }

    private static final class ObjectData {
        public final byte[] bottomFieldData;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        public final int f36789id;
        public final boolean nonModifyingColorFlag;
        public final byte[] topFieldData;

        public ObjectData(int i11, boolean z10, byte[] bArr, byte[] bArr2) {
            this.f36789id = i11;
            this.nonModifyingColorFlag = z10;
            this.topFieldData = bArr;
            this.bottomFieldData = bArr2;
        }
    }

    private static final class PageComposition {
        public final SparseArray<PageRegion> regions;
        public final int state;
        public final int timeOutSecs;
        public final int version;

        public PageComposition(int i11, int i12, int i13, SparseArray<PageRegion> sparseArray) {
            this.timeOutSecs = i11;
            this.version = i12;
            this.state = i13;
            this.regions = sparseArray;
        }
    }

    private static final class PageRegion {
        public final int horizontalAddress;
        public final int verticalAddress;

        public PageRegion(int i11, int i12) {
            this.horizontalAddress = i11;
            this.verticalAddress = i12;
        }
    }

    private static final class RegionComposition {
        public final int clutId;
        public final int depth;
        public final boolean fillFlag;
        public final int height;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        public final int f36790id;
        public final int levelOfCompatibility;
        public final int pixelCode2Bit;
        public final int pixelCode4Bit;
        public final int pixelCode8Bit;
        public final SparseArray<RegionObject> regionObjects;
        public final int width;

        public RegionComposition(int i11, boolean z10, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, SparseArray<RegionObject> sparseArray) {
            this.f36790id = i11;
            this.fillFlag = z10;
            this.width = i12;
            this.height = i13;
            this.levelOfCompatibility = i14;
            this.depth = i15;
            this.clutId = i16;
            this.pixelCode8Bit = i17;
            this.pixelCode4Bit = i18;
            this.pixelCode2Bit = i19;
            this.regionObjects = sparseArray;
        }

        public void mergeFrom(RegionComposition regionComposition) {
            if (regionComposition == null) {
                return;
            }
            SparseArray<RegionObject> sparseArray = regionComposition.regionObjects;
            for (int i11 = 0; i11 < sparseArray.size(); i11++) {
                this.regionObjects.put(sparseArray.keyAt(i11), sparseArray.valueAt(i11));
            }
        }
    }

    private static final class RegionObject {
        public final int backgroundPixelCode;
        public final int foregroundPixelCode;
        public final int horizontalPosition;
        public final int provider;
        public final int type;
        public final int verticalPosition;

        public RegionObject(int i11, int i12, int i13, int i14, int i15, int i16) {
            this.type = i11;
            this.provider = i12;
            this.horizontalPosition = i13;
            this.verticalPosition = i14;
            this.foregroundPixelCode = i15;
            this.backgroundPixelCode = i16;
        }
    }

    private static final class SubtitleService {
        public final int ancillaryPageId;
        public DisplayDefinition displayDefinition;
        public PageComposition pageComposition;
        public final int subtitlePageId;
        public final SparseArray<RegionComposition> regions = new SparseArray<>();
        public final SparseArray<ClutDefinition> cluts = new SparseArray<>();
        public final SparseArray<ObjectData> objects = new SparseArray<>();
        public final SparseArray<ClutDefinition> ancillaryCluts = new SparseArray<>();
        public final SparseArray<ObjectData> ancillaryObjects = new SparseArray<>();

        public SubtitleService(int i11, int i12) {
            this.subtitlePageId = i11;
            this.ancillaryPageId = i12;
        }

        public void reset() {
            this.regions.clear();
            this.cluts.clear();
            this.objects.clear();
            this.ancillaryCluts.clear();
            this.ancillaryObjects.clear();
            this.displayDefinition = null;
            this.pageComposition = null;
        }
    }

    public DvbParser(int i11, int i12) {
        Paint paint = new Paint();
        this.defaultPaint = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.fillRegionPaint = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.canvas = new Canvas();
        this.defaultDisplayDefinition = new DisplayDefinition(719, 575, 0, 719, 0, 575);
        this.defaultClutDefinition = new ClutDefinition(0, generateDefault2BitClutEntries(), generateDefault4BitClutEntries(), generateDefault8BitClutEntries());
        this.subtitleService = new SubtitleService(i11, i12);
    }

    private static byte[] buildClutMapTable(int i11, int i12, ParsableBitArray parsableBitArray) {
        byte[] bArr = new byte[i11];
        for (int i13 = 0; i13 < i11; i13++) {
            bArr[i13] = (byte) parsableBitArray.readBits(i12);
        }
        return bArr;
    }

    private static int[] generateDefault2BitClutEntries() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] generateDefault4BitClutEntries() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i11 = 1; i11 < 16; i11++) {
            if (i11 < 8) {
                iArr[i11] = getColor(255, (i11 & 1) != 0 ? 255 : 0, (i11 & 2) != 0 ? 255 : 0, (i11 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i11] = getColor(255, (i11 & 1) != 0 ? 127 : 0, (i11 & 2) != 0 ? 127 : 0, (i11 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] generateDefault8BitClutEntries() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            if (i11 < 8) {
                iArr[i11] = getColor(63, (i11 & 1) != 0 ? 255 : 0, (i11 & 2) != 0 ? 255 : 0, (i11 & 4) == 0 ? 0 : 255);
            } else {
                int i12 = i11 & Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
                if (i12 == 0) {
                    iArr[i11] = getColor(255, ((i11 & 1) != 0 ? 85 : 0) + ((i11 & 16) != 0 ? 170 : 0), ((i11 & 2) != 0 ? 85 : 0) + ((i11 & 32) != 0 ? 170 : 0), ((i11 & 4) == 0 ? 0 : 85) + ((i11 & 64) == 0 ? 0 : 170));
                } else if (i12 == 8) {
                    iArr[i11] = getColor(127, ((i11 & 1) != 0 ? 85 : 0) + ((i11 & 16) != 0 ? 170 : 0), ((i11 & 2) != 0 ? 85 : 0) + ((i11 & 32) != 0 ? 170 : 0), ((i11 & 4) == 0 ? 0 : 85) + ((i11 & 64) == 0 ? 0 : 170));
                } else if (i12 == 128) {
                    iArr[i11] = getColor(255, ((i11 & 1) != 0 ? 43 : 0) + 127 + ((i11 & 16) != 0 ? 85 : 0), ((i11 & 2) != 0 ? 43 : 0) + 127 + ((i11 & 32) != 0 ? 85 : 0), ((i11 & 4) == 0 ? 0 : 43) + 127 + ((i11 & 64) == 0 ? 0 : 85));
                } else if (i12 == 136) {
                    iArr[i11] = getColor(255, ((i11 & 1) != 0 ? 43 : 0) + ((i11 & 16) != 0 ? 85 : 0), ((i11 & 2) != 0 ? 43 : 0) + ((i11 & 32) != 0 ? 85 : 0), ((i11 & 4) == 0 ? 0 : 43) + ((i11 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    private static int getColor(int i11, int i12, int i13, int i14) {
        return (i11 << 24) | (i12 << 16) | (i13 << 8) | i14;
    }

    private static int paint2BitPixelCodeString(ParsableBitArray parsableBitArray, int[] iArr, byte[] bArr, int i11, int i12, Paint paint, Canvas canvas) {
        int i13;
        int bits;
        int bits2;
        int i14 = i11;
        boolean z10 = false;
        while (true) {
            int bits3 = parsableBitArray.readBits(2);
            if (bits3 != 0) {
                z10 = z10;
                i13 = 1;
            } else {
                if (parsableBitArray.readBit()) {
                    bits = parsableBitArray.readBits(3) + 3;
                    bits2 = parsableBitArray.readBits(2);
                } else {
                    if (parsableBitArray.readBit()) {
                        i13 = 1;
                    } else {
                        int bits4 = parsableBitArray.readBits(2);
                        if (bits4 == 0) {
                            z10 = true;
                        } else if (bits4 == 1) {
                            i13 = 2;
                        } else if (bits4 == 2) {
                            bits = parsableBitArray.readBits(4) + 12;
                            bits2 = parsableBitArray.readBits(2);
                        } else if (bits4 != 3) {
                            z10 = z10;
                        } else {
                            bits = parsableBitArray.readBits(8) + 29;
                            bits2 = parsableBitArray.readBits(2);
                        }
                        bits3 = 0;
                        i13 = 0;
                    }
                    bits3 = 0;
                }
                z10 = z10;
                i13 = bits;
                bits3 = bits2;
            }
            if (i13 != 0 && paint != null) {
                if (bArr != null) {
                    bits3 = bArr[bits3];
                }
                paint.setColor(iArr[bits3]);
                canvas.drawRect(i14, i12, i14 + i13, i12 + 1, paint);
            }
            i14 += i13;
            if (z10) {
                return i14;
            }
            z10 = z10;
        }
    }

    private static int paint4BitPixelCodeString(ParsableBitArray parsableBitArray, int[] iArr, byte[] bArr, int i11, int i12, Paint paint, Canvas canvas) {
        int i13;
        int bits;
        int bits2;
        int i14 = i11;
        boolean z10 = false;
        while (true) {
            int bits3 = parsableBitArray.readBits(4);
            if (bits3 != 0) {
                z10 = z10;
                i13 = 1;
            } else if (parsableBitArray.readBit()) {
                if (parsableBitArray.readBit()) {
                    int bits4 = parsableBitArray.readBits(2);
                    if (bits4 == 0) {
                        i13 = 1;
                    } else if (bits4 == 1) {
                        i13 = 2;
                    } else if (bits4 == 2) {
                        bits = parsableBitArray.readBits(4) + 9;
                        bits2 = parsableBitArray.readBits(4);
                    } else if (bits4 != 3) {
                        z10 = z10;
                        bits3 = 0;
                        i13 = 0;
                    } else {
                        bits = parsableBitArray.readBits(8) + 25;
                        bits2 = parsableBitArray.readBits(4);
                    }
                    bits3 = 0;
                } else {
                    bits = parsableBitArray.readBits(2) + 4;
                    bits2 = parsableBitArray.readBits(4);
                }
                z10 = z10;
                i13 = bits;
                bits3 = bits2;
            } else {
                int bits5 = parsableBitArray.readBits(3);
                if (bits5 != 0) {
                    i13 = bits5 + 2;
                    bits3 = 0;
                } else {
                    z10 = true;
                    bits3 = 0;
                    i13 = 0;
                }
            }
            if (i13 != 0 && paint != null) {
                if (bArr != null) {
                    bits3 = bArr[bits3];
                }
                paint.setColor(iArr[bits3]);
                canvas.drawRect(i14, i12, i14 + i13, i12 + 1, paint);
            }
            i14 += i13;
            if (z10) {
                return i14;
            }
            z10 = z10;
        }
    }

    private static int paint8BitPixelCodeString(ParsableBitArray parsableBitArray, int[] iArr, byte[] bArr, int i11, int i12, Paint paint, Canvas canvas) {
        boolean z10;
        int bits;
        int i13 = i11;
        boolean z11 = false;
        while (true) {
            int bits2 = parsableBitArray.readBits(8);
            if (bits2 != 0) {
                z10 = z11;
                bits = 1;
            } else if (parsableBitArray.readBit()) {
                z10 = z11;
                bits = parsableBitArray.readBits(7);
                bits2 = parsableBitArray.readBits(8);
            } else {
                int bits3 = parsableBitArray.readBits(7);
                if (bits3 != 0) {
                    z10 = z11;
                    bits = bits3;
                    bits2 = 0;
                } else {
                    z10 = true;
                    bits2 = 0;
                    bits = 0;
                }
            }
            if (bits != 0 && paint != null) {
                if (bArr != null) {
                    bits2 = bArr[bits2];
                }
                paint.setColor(iArr[bits2]);
                canvas.drawRect(i13, i12, i13 + bits, i12 + 1, paint);
            }
            i13 += bits;
            if (z10) {
                return i13;
            }
            z11 = z10;
        }
    }

    private static void paintPixelDataSubBlock(byte[] bArr, int[] iArr, int i11, int i12, int i13, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        int iPaint2BitPixelCodeString = i12;
        int i14 = i13;
        byte[] bArrBuildClutMapTable = null;
        byte[] bArrBuildClutMapTable2 = null;
        while (parsableBitArray.bitsLeft() != 0) {
            int bits = parsableBitArray.readBits(8);
            if (bits != 240) {
                switch (bits) {
                    case 16:
                        if (i11 == 3) {
                            if (bArrBuildClutMapTable == null) {
                                bArr3 = defaultMap2To8;
                                bArr2 = bArr3;
                            } else {
                                bArr2 = bArrBuildClutMapTable;
                            }
                        } else if (i11 != 2) {
                            bArr2 = null;
                        } else if (bArrBuildClutMapTable2 == null) {
                            bArr3 = defaultMap2To4;
                            bArr2 = bArr3;
                        } else {
                            bArr2 = bArrBuildClutMapTable2;
                        }
                        iPaint2BitPixelCodeString = paint2BitPixelCodeString(parsableBitArray, iArr, bArr2, iPaint2BitPixelCodeString, i14, paint, canvas);
                        parsableBitArray.byteAlign();
                        break;
                    case 17:
                        iPaint2BitPixelCodeString = paint4BitPixelCodeString(parsableBitArray, iArr, i11 == 3 ? defaultMap4To8 : null, iPaint2BitPixelCodeString, i14, paint, canvas);
                        parsableBitArray.byteAlign();
                        break;
                    case 18:
                        iPaint2BitPixelCodeString = paint8BitPixelCodeString(parsableBitArray, iArr, null, iPaint2BitPixelCodeString, i14, paint, canvas);
                        break;
                    default:
                        switch (bits) {
                            case 32:
                                bArrBuildClutMapTable2 = buildClutMapTable(4, 4, parsableBitArray);
                                break;
                            case 33:
                                bArrBuildClutMapTable = buildClutMapTable(4, 8, parsableBitArray);
                                break;
                            case 34:
                                bArrBuildClutMapTable = buildClutMapTable(16, 8, parsableBitArray);
                                break;
                        }
                        break;
                }
            } else {
                i14 += 2;
                iPaint2BitPixelCodeString = i12;
            }
        }
    }

    private static void paintPixelDataSubBlocks(ObjectData objectData, ClutDefinition clutDefinition, int i11, int i12, int i13, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i11 == 3) {
            iArr = clutDefinition.clutEntries8Bit;
        } else {
            iArr = i11 == 2 ? clutDefinition.clutEntries4Bit : clutDefinition.clutEntries2Bit;
        }
        int[] iArr2 = iArr;
        paintPixelDataSubBlock(objectData.topFieldData, iArr2, i11, i12, i13, paint, canvas);
        paintPixelDataSubBlock(objectData.bottomFieldData, iArr2, i11, i12, i13 + 1, paint, canvas);
    }

    private static ClutDefinition parseClutDefinition(ParsableBitArray parsableBitArray, int i11) {
        int[] iArr;
        int bits;
        int i12;
        int bits2;
        int bits3;
        int bits4;
        int i13 = 8;
        int bits5 = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(8);
        int i14 = 2;
        int i15 = i11 - 2;
        int[] iArrGenerateDefault2BitClutEntries = generateDefault2BitClutEntries();
        int[] iArrGenerateDefault4BitClutEntries = generateDefault4BitClutEntries();
        int[] iArrGenerateDefault8BitClutEntries = generateDefault8BitClutEntries();
        while (i15 > 0) {
            int bits6 = parsableBitArray.readBits(i13);
            int bits7 = parsableBitArray.readBits(i13);
            if ((bits7 & 128) != 0) {
                iArr = iArrGenerateDefault2BitClutEntries;
            } else {
                iArr = (bits7 & 64) != 0 ? iArrGenerateDefault4BitClutEntries : iArrGenerateDefault8BitClutEntries;
            }
            if ((bits7 & 1) != 0) {
                bits3 = parsableBitArray.readBits(i13);
                bits4 = parsableBitArray.readBits(i13);
                bits = parsableBitArray.readBits(i13);
                bits2 = parsableBitArray.readBits(i13);
                i12 = i15 - 6;
            } else {
                int bits8 = parsableBitArray.readBits(6) << i14;
                int bits9 = parsableBitArray.readBits(4) << 4;
                bits = parsableBitArray.readBits(4) << 4;
                i12 = i15 - 4;
                bits2 = parsableBitArray.readBits(i14) << 6;
                bits3 = bits8;
                bits4 = bits9;
            }
            if (bits3 == 0) {
                bits2 = 255;
                bits4 = 0;
                bits = 0;
            }
            double d11 = bits3;
            double d12 = bits4 - 128;
            double d13 = bits - 128;
            iArr[bits6] = getColor((byte) (255 - (bits2 & 255)), Util.constrainValue((int) (d11 + (1.402d * d12)), 0, 255), Util.constrainValue((int) ((d11 - (0.34414d * d13)) - (d12 * 0.71414d)), 0, 255), Util.constrainValue((int) (d11 + (d13 * 1.772d)), 0, 255));
            i15 = i12;
            bits5 = bits5;
            i13 = 8;
            i14 = 2;
        }
        return new ClutDefinition(bits5, iArrGenerateDefault2BitClutEntries, iArrGenerateDefault4BitClutEntries, iArrGenerateDefault8BitClutEntries);
    }

    private static DisplayDefinition parseDisplayDefinition(ParsableBitArray parsableBitArray) {
        int i11;
        int i12;
        int i13;
        int bits;
        parsableBitArray.skipBits(4);
        boolean bit = parsableBitArray.readBit();
        parsableBitArray.skipBits(3);
        int bits2 = parsableBitArray.readBits(16);
        int bits3 = parsableBitArray.readBits(16);
        if (bit) {
            int bits4 = parsableBitArray.readBits(16);
            int bits5 = parsableBitArray.readBits(16);
            int bits6 = parsableBitArray.readBits(16);
            bits = parsableBitArray.readBits(16);
            i13 = bits5;
            i12 = bits6;
            i11 = bits4;
        } else {
            i11 = 0;
            i12 = 0;
            i13 = bits2;
            bits = bits3;
        }
        return new DisplayDefinition(bits2, bits3, i11, i13, i12, bits);
    }

    private static ObjectData parseObjectData(ParsableBitArray parsableBitArray) {
        byte[] bArr;
        int bits = parsableBitArray.readBits(16);
        parsableBitArray.skipBits(4);
        int bits2 = parsableBitArray.readBits(2);
        boolean bit = parsableBitArray.readBit();
        parsableBitArray.skipBits(1);
        byte[] bArr2 = null;
        if (bits2 != 1) {
            if (bits2 == 0) {
                int bits3 = parsableBitArray.readBits(16);
                int bits4 = parsableBitArray.readBits(16);
                if (bits3 > 0) {
                    bArr2 = new byte[bits3];
                    parsableBitArray.readBytes(bArr2, 0, bits3);
                }
                if (bits4 > 0) {
                    bArr = new byte[bits4];
                    parsableBitArray.readBytes(bArr, 0, bits4);
                }
            }
            return new ObjectData(bits, bit, bArr2, bArr);
        }
        parsableBitArray.skipBits(parsableBitArray.readBits(8) * 16);
        bArr = bArr2;
        return new ObjectData(bits, bit, bArr2, bArr);
    }

    private static PageComposition parsePageComposition(ParsableBitArray parsableBitArray, int i11) {
        int bits = parsableBitArray.readBits(8);
        int bits2 = parsableBitArray.readBits(4);
        int bits3 = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(2);
        int i12 = i11 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i12 > 0) {
            int bits4 = parsableBitArray.readBits(8);
            parsableBitArray.skipBits(8);
            i12 -= 6;
            sparseArray.put(bits4, new PageRegion(parsableBitArray.readBits(16), parsableBitArray.readBits(16)));
        }
        return new PageComposition(bits, bits2, bits3, sparseArray);
    }

    private static RegionComposition parseRegionComposition(ParsableBitArray parsableBitArray, int i11) {
        int i12;
        int bits;
        int bits2;
        int bits3 = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(4);
        boolean bit = parsableBitArray.readBit();
        parsableBitArray.skipBits(3);
        int i13 = 16;
        int bits4 = parsableBitArray.readBits(16);
        int bits5 = parsableBitArray.readBits(16);
        int bits6 = parsableBitArray.readBits(3);
        int bits7 = parsableBitArray.readBits(3);
        int i14 = 2;
        parsableBitArray.skipBits(2);
        int bits8 = parsableBitArray.readBits(8);
        int bits9 = parsableBitArray.readBits(8);
        int bits10 = parsableBitArray.readBits(4);
        int bits11 = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(2);
        int i15 = i11 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i15 > 0) {
            int bits12 = parsableBitArray.readBits(i13);
            int bits13 = parsableBitArray.readBits(i14);
            int bits14 = parsableBitArray.readBits(i14);
            int bits15 = parsableBitArray.readBits(12);
            int i16 = bits11;
            parsableBitArray.skipBits(4);
            int bits16 = parsableBitArray.readBits(12);
            int i17 = i15 - 6;
            if (bits13 != 1) {
                i12 = 2;
                if (bits13 != 2) {
                    bits2 = 0;
                    bits = 0;
                    i15 = i17;
                }
                sparseArray.put(bits12, new RegionObject(bits13, bits14, bits15, bits16, bits2, bits));
                i14 = i12;
                bits11 = i16;
                i13 = 16;
            } else {
                i12 = 2;
            }
            i15 -= 8;
            bits2 = parsableBitArray.readBits(8);
            bits = parsableBitArray.readBits(8);
            sparseArray.put(bits12, new RegionObject(bits13, bits14, bits15, bits16, bits2, bits));
            i14 = i12;
            bits11 = i16;
            i13 = 16;
        }
        return new RegionComposition(bits3, bit, bits4, bits5, bits6, bits7, bits8, bits9, bits10, bits11, sparseArray);
    }

    private static void parseSubtitlingSegment(ParsableBitArray parsableBitArray, SubtitleService subtitleService) {
        int bits = parsableBitArray.readBits(8);
        int bits2 = parsableBitArray.readBits(16);
        int bits3 = parsableBitArray.readBits(16);
        int bytePosition = parsableBitArray.getBytePosition() + bits3;
        if (bits3 * 8 > parsableBitArray.bitsLeft()) {
            Log.w(TAG, "Data field length exceeds limit");
            parsableBitArray.skipBits(parsableBitArray.bitsLeft());
            return;
        }
        switch (bits) {
            case 16:
                if (bits2 == subtitleService.subtitlePageId) {
                    PageComposition pageComposition = subtitleService.pageComposition;
                    PageComposition pageComposition2 = parsePageComposition(parsableBitArray, bits3);
                    if (pageComposition2.state != 0) {
                        subtitleService.pageComposition = pageComposition2;
                        subtitleService.regions.clear();
                        subtitleService.cluts.clear();
                        subtitleService.objects.clear();
                    } else if (pageComposition != null && pageComposition.version != pageComposition2.version) {
                        subtitleService.pageComposition = pageComposition2;
                    }
                }
                break;
            case 17:
                PageComposition pageComposition3 = subtitleService.pageComposition;
                if (bits2 == subtitleService.subtitlePageId && pageComposition3 != null) {
                    RegionComposition regionComposition = parseRegionComposition(parsableBitArray, bits3);
                    if (pageComposition3.state == 0) {
                        regionComposition.mergeFrom(subtitleService.regions.get(regionComposition.f36790id));
                    }
                    subtitleService.regions.put(regionComposition.f36790id, regionComposition);
                }
                break;
            case 18:
                if (bits2 == subtitleService.subtitlePageId) {
                    ClutDefinition clutDefinition = parseClutDefinition(parsableBitArray, bits3);
                    subtitleService.cluts.put(clutDefinition.f36788id, clutDefinition);
                } else if (bits2 == subtitleService.ancillaryPageId) {
                    ClutDefinition clutDefinition2 = parseClutDefinition(parsableBitArray, bits3);
                    subtitleService.ancillaryCluts.put(clutDefinition2.f36788id, clutDefinition2);
                }
                break;
            case 19:
                if (bits2 == subtitleService.subtitlePageId) {
                    ObjectData objectData = parseObjectData(parsableBitArray);
                    subtitleService.objects.put(objectData.f36789id, objectData);
                } else if (bits2 == subtitleService.ancillaryPageId) {
                    ObjectData objectData2 = parseObjectData(parsableBitArray);
                    subtitleService.ancillaryObjects.put(objectData2.f36789id, objectData2);
                }
                break;
            case 20:
                if (bits2 == subtitleService.subtitlePageId) {
                    subtitleService.displayDefinition = parseDisplayDefinition(parsableBitArray);
                }
                break;
        }
        parsableBitArray.skipBytes(bytePosition - parsableBitArray.getBytePosition());
    }

    public List<Cue> decode(byte[] bArr, int i11) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr, i11);
        while (parsableBitArray.bitsLeft() >= 48 && parsableBitArray.readBits(8) == 15) {
            parseSubtitlingSegment(parsableBitArray, this.subtitleService);
        }
        SubtitleService subtitleService = this.subtitleService;
        if (subtitleService.pageComposition == null) {
            return Collections.emptyList();
        }
        DisplayDefinition displayDefinition = subtitleService.displayDefinition;
        if (displayDefinition == null) {
            displayDefinition = this.defaultDisplayDefinition;
        }
        Bitmap bitmap = this.bitmap;
        if (bitmap == null || displayDefinition.width + 1 != bitmap.getWidth() || displayDefinition.height + 1 != this.bitmap.getHeight()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(displayDefinition.width + 1, displayDefinition.height + 1, Bitmap.Config.ARGB_8888);
            this.bitmap = bitmapCreateBitmap;
            this.canvas.setBitmap(bitmapCreateBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<PageRegion> sparseArray = this.subtitleService.pageComposition.regions;
        for (int i12 = 0; i12 < sparseArray.size(); i12++) {
            PageRegion pageRegionValueAt = sparseArray.valueAt(i12);
            RegionComposition regionComposition = this.subtitleService.regions.get(sparseArray.keyAt(i12));
            int i13 = pageRegionValueAt.horizontalAddress + displayDefinition.horizontalPositionMinimum;
            int i14 = pageRegionValueAt.verticalAddress + displayDefinition.verticalPositionMinimum;
            float f11 = i13;
            float f12 = i14;
            this.canvas.clipRect(f11, f12, Math.min(regionComposition.width + i13, displayDefinition.horizontalPositionMaximum), Math.min(regionComposition.height + i14, displayDefinition.verticalPositionMaximum), Region.Op.REPLACE);
            ClutDefinition clutDefinition = this.subtitleService.cluts.get(regionComposition.clutId);
            if (clutDefinition == null && (clutDefinition = this.subtitleService.ancillaryCluts.get(regionComposition.clutId)) == null) {
                clutDefinition = this.defaultClutDefinition;
            }
            int i15 = 0;
            for (SparseArray<RegionObject> sparseArray2 = regionComposition.regionObjects; i15 < sparseArray2.size(); sparseArray2 = sparseArray2) {
                int iKeyAt = sparseArray2.keyAt(i15);
                RegionObject regionObjectValueAt = sparseArray2.valueAt(i15);
                ObjectData objectData = this.subtitleService.objects.get(iKeyAt);
                ObjectData objectData2 = objectData == null ? this.subtitleService.ancillaryObjects.get(iKeyAt) : objectData;
                if (objectData2 != null) {
                    paintPixelDataSubBlocks(objectData2, clutDefinition, regionComposition.depth, regionObjectValueAt.horizontalPosition + i13, i14 + regionObjectValueAt.verticalPosition, objectData2.nonModifyingColorFlag ? null : this.defaultPaint, this.canvas);
                }
                i15++;
            }
            if (regionComposition.fillFlag) {
                int i16 = regionComposition.depth;
                this.fillRegionPaint.setColor(i16 == 3 ? clutDefinition.clutEntries8Bit[regionComposition.pixelCode8Bit] : i16 == 2 ? clutDefinition.clutEntries4Bit[regionComposition.pixelCode4Bit] : clutDefinition.clutEntries2Bit[regionComposition.pixelCode2Bit]);
                this.canvas.drawRect(f11, f12, regionComposition.width + i13, regionComposition.height + i14, this.fillRegionPaint);
            }
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.bitmap, i13, i14, regionComposition.width, regionComposition.height);
            float f13 = displayDefinition.width;
            float f14 = displayDefinition.height;
            arrayList.add(new Cue(bitmapCreateBitmap2, f11 / f13, 0, f12 / f14, 0, regionComposition.width / f13, regionComposition.height / f14));
            this.canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        return arrayList;
    }

    public void reset() {
        this.subtitleService.reset();
    }
}
