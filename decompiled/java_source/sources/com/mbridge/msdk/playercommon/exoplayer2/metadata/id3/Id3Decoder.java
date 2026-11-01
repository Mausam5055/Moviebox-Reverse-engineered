package com.mbridge.msdk.playercommon.exoplayer2.metadata.id3;

import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.MetadataDecoder;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.MetadataInputBuffer;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class Id3Decoder implements MetadataDecoder {
    private static final int FRAME_FLAG_V3_HAS_GROUP_IDENTIFIER = 32;
    private static final int FRAME_FLAG_V3_IS_COMPRESSED = 128;
    private static final int FRAME_FLAG_V3_IS_ENCRYPTED = 64;
    private static final int FRAME_FLAG_V4_HAS_DATA_LENGTH = 1;
    private static final int FRAME_FLAG_V4_HAS_GROUP_IDENTIFIER = 64;
    private static final int FRAME_FLAG_V4_IS_COMPRESSED = 8;
    private static final int FRAME_FLAG_V4_IS_ENCRYPTED = 4;
    private static final int FRAME_FLAG_V4_IS_UNSYNCHRONIZED = 2;
    public static final int ID3_HEADER_LENGTH = 10;
    private static final int ID3_TEXT_ENCODING_ISO_8859_1 = 0;
    private static final int ID3_TEXT_ENCODING_UTF_16 = 1;
    private static final int ID3_TEXT_ENCODING_UTF_16BE = 2;
    private static final int ID3_TEXT_ENCODING_UTF_8 = 3;
    private static final String TAG = "Id3Decoder";
    private final FramePredicate framePredicate;
    public static final FramePredicate NO_FRAMES_PREDICATE = new FramePredicate() { // from class: com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.Id3Decoder.1
        @Override // com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.Id3Decoder.FramePredicate
        public boolean evaluate(int i11, int i12, int i13, int i14, int i15) {
            return false;
        }
    };
    public static final int ID3_TAG = Util.getIntegerCodeForString("ID3");

    public interface FramePredicate {
        boolean evaluate(int i11, int i12, int i13, int i14, int i15);
    }

    private static final class Id3Header {
        private final int framesSize;
        private final boolean isUnsynchronized;
        private final int majorVersion;

        public Id3Header(int i11, boolean z10, int i12) {
            this.majorVersion = i11;
            this.isUnsynchronized = z10;
            this.framesSize = i12;
        }
    }

    public Id3Decoder() {
        this(null);
    }

    public Id3Decoder(FramePredicate framePredicate) {
        this.framePredicate = framePredicate;
    }

    private static byte[] copyOfRangeIfValid(byte[] bArr, int i11, int i12) {
        return i12 <= i11 ? new byte[0] : Arrays.copyOfRange(bArr, i11, i12);
    }

    private static ApicFrame decodeApicFrame(ParsableByteArray parsableByteArray, int i11, int i12) throws UnsupportedEncodingException {
        int iIndexOfZeroByte;
        String lowerInvariant;
        int unsignedByte = parsableByteArray.readUnsignedByte();
        String charsetName = getCharsetName(unsignedByte);
        int i13 = i11 - 1;
        byte[] bArr = new byte[i13];
        parsableByteArray.readBytes(bArr, 0, i13);
        if (i12 == 2) {
            lowerInvariant = "image/" + Util.toLowerInvariant(new String(bArr, 0, 3, "ISO-8859-1"));
            if ("image/jpg".equals(lowerInvariant)) {
                lowerInvariant = "image/jpeg";
            }
            iIndexOfZeroByte = 2;
        } else {
            iIndexOfZeroByte = indexOfZeroByte(bArr, 0);
            lowerInvariant = Util.toLowerInvariant(new String(bArr, 0, iIndexOfZeroByte, "ISO-8859-1"));
            if (lowerInvariant.indexOf(47) == -1) {
                lowerInvariant = "image/" + lowerInvariant;
            }
        }
        int i14 = bArr[iIndexOfZeroByte + 1] & 255;
        int i15 = iIndexOfZeroByte + 2;
        int iIndexOfEos = indexOfEos(bArr, i15, unsignedByte);
        return new ApicFrame(lowerInvariant, new String(bArr, i15, iIndexOfEos - i15, charsetName), i14, copyOfRangeIfValid(bArr, iIndexOfEos + delimiterLength(unsignedByte), i13));
    }

    private static BinaryFrame decodeBinaryFrame(ParsableByteArray parsableByteArray, int i11, String str) {
        byte[] bArr = new byte[i11];
        parsableByteArray.readBytes(bArr, 0, i11);
        return new BinaryFrame(str, bArr);
    }

    private static ChapterFrame decodeChapterFrame(ParsableByteArray parsableByteArray, int i11, int i12, boolean z10, int i13, FramePredicate framePredicate) throws UnsupportedEncodingException {
        int position = parsableByteArray.getPosition();
        int iIndexOfZeroByte = indexOfZeroByte(parsableByteArray.data, position);
        String str = new String(parsableByteArray.data, position, iIndexOfZeroByte - position, "ISO-8859-1");
        parsableByteArray.setPosition(iIndexOfZeroByte + 1);
        int i14 = parsableByteArray.readInt();
        int i15 = parsableByteArray.readInt();
        long unsignedInt = parsableByteArray.readUnsignedInt();
        long j11 = unsignedInt == 4294967295L ? -1L : unsignedInt;
        long unsignedInt2 = parsableByteArray.readUnsignedInt();
        long j12 = unsignedInt2 == 4294967295L ? -1L : unsignedInt2;
        ArrayList arrayList = new ArrayList();
        int i16 = position + i11;
        while (parsableByteArray.getPosition() < i16) {
            Id3Frame id3FrameDecodeFrame = decodeFrame(i12, parsableByteArray, z10, i13, framePredicate);
            if (id3FrameDecodeFrame != null) {
                arrayList.add(id3FrameDecodeFrame);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterFrame(str, i14, i15, j11, j12, id3FrameArr);
    }

    private static ChapterTocFrame decodeChapterTOCFrame(ParsableByteArray parsableByteArray, int i11, int i12, boolean z10, int i13, FramePredicate framePredicate) throws UnsupportedEncodingException {
        int position = parsableByteArray.getPosition();
        int iIndexOfZeroByte = indexOfZeroByte(parsableByteArray.data, position);
        String str = new String(parsableByteArray.data, position, iIndexOfZeroByte - position, "ISO-8859-1");
        parsableByteArray.setPosition(iIndexOfZeroByte + 1);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        boolean z11 = (unsignedByte & 2) != 0;
        boolean z12 = (unsignedByte & 1) != 0;
        int unsignedByte2 = parsableByteArray.readUnsignedByte();
        String[] strArr = new String[unsignedByte2];
        for (int i14 = 0; i14 < unsignedByte2; i14++) {
            int position2 = parsableByteArray.getPosition();
            int iIndexOfZeroByte2 = indexOfZeroByte(parsableByteArray.data, position2);
            strArr[i14] = new String(parsableByteArray.data, position2, iIndexOfZeroByte2 - position2, "ISO-8859-1");
            parsableByteArray.setPosition(iIndexOfZeroByte2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i15 = position + i11;
        while (parsableByteArray.getPosition() < i15) {
            Id3Frame id3FrameDecodeFrame = decodeFrame(i12, parsableByteArray, z10, i13, framePredicate);
            if (id3FrameDecodeFrame != null) {
                arrayList.add(id3FrameDecodeFrame);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterTocFrame(str, z11, z12, strArr, id3FrameArr);
    }

    private static CommentFrame decodeCommentFrame(ParsableByteArray parsableByteArray, int i11) throws UnsupportedEncodingException {
        if (i11 < 4) {
            return null;
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        String charsetName = getCharsetName(unsignedByte);
        byte[] bArr = new byte[3];
        parsableByteArray.readBytes(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i12 = i11 - 4;
        byte[] bArr2 = new byte[i12];
        parsableByteArray.readBytes(bArr2, 0, i12);
        int iIndexOfEos = indexOfEos(bArr2, 0, unsignedByte);
        String str2 = new String(bArr2, 0, iIndexOfEos, charsetName);
        int iDelimiterLength = iIndexOfEos + delimiterLength(unsignedByte);
        return new CommentFrame(str, str2, decodeStringIfValid(bArr2, iDelimiterLength, indexOfEos(bArr2, iDelimiterLength, unsignedByte), charsetName));
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0194  */
    /* JADX WARN: Code duplicated, block: B:139:0x01a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:140:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:145:0x01bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:146:0x01c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:150:0x01d7 A[Catch: all -> 0x011f, UnsupportedEncodingException -> 0x0205, Merged into TryCatch #1 {all -> 0x011f, UnsupportedEncodingException -> 0x0205, blocks: (B:90:0x0119, B:152:0x01e1, B:155:0x0205, B:94:0x0124, B:101:0x013a, B:103:0x0142, B:111:0x015c, B:120:0x0174, B:131:0x018f, B:138:0x01a0, B:144:0x01af, B:149:0x01c7, B:150:0x01d7), top: B:162:0x010f }] */
    private static Id3Frame decodeFrame(int i11, ParsableByteArray parsableByteArray, boolean z10, int i12, FramePredicate framePredicate) {
        int unsignedIntToInt;
        int i13;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        Id3Frame id3FrameDecodeBinaryFrame;
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int unsignedByte2 = parsableByteArray.readUnsignedByte();
        int unsignedByte3 = parsableByteArray.readUnsignedByte();
        int unsignedByte4 = i11 >= 3 ? parsableByteArray.readUnsignedByte() : 0;
        if (i11 == 4) {
            unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            if (!z10) {
                unsignedIntToInt = (((unsignedIntToInt >> 24) & 255) << 21) | (unsignedIntToInt & 255) | (((unsignedIntToInt >> 8) & 255) << 7) | (((unsignedIntToInt >> 16) & 255) << 14);
            }
        } else {
            unsignedIntToInt = i11 == 3 ? parsableByteArray.readUnsignedIntToInt() : parsableByteArray.readUnsignedInt24();
        }
        int iRemoveUnsynchronization = unsignedIntToInt;
        int unsignedShort = i11 >= 3 ? parsableByteArray.readUnsignedShort() : 0;
        if (unsignedByte == 0 && unsignedByte2 == 0 && unsignedByte3 == 0 && unsignedByte4 == 0 && iRemoveUnsynchronization == 0 && unsignedShort == 0) {
            parsableByteArray.setPosition(parsableByteArray.limit());
            return null;
        }
        int position = parsableByteArray.getPosition() + iRemoveUnsynchronization;
        if (position > parsableByteArray.limit()) {
            Log.w(TAG, "Frame size exceeds remaining tag data");
            parsableByteArray.setPosition(parsableByteArray.limit());
            return null;
        }
        if (framePredicate != null) {
            i13 = position;
            if (!framePredicate.evaluate(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4)) {
                parsableByteArray.setPosition(i13);
                return null;
            }
        } else {
            i13 = position;
        }
        if (i11 == 3) {
            int i14 = unsignedShort;
            z15 = (i14 & 128) != 0;
            z13 = (i14 & 64) != 0;
            z14 = false;
            z11 = (i14 & 32) != 0;
            z12 = z15;
        } else {
            int i15 = unsignedShort;
            if (i11 == 4) {
                z11 = (i15 & 64) != 0;
                z12 = (i15 & 8) != 0;
                z13 = (i15 & 4) != 0;
                z14 = (i15 & 2) != 0;
                if ((i15 & 1) != 0) {
                    z15 = true;
                }
            } else {
                z11 = false;
                z12 = false;
                z13 = false;
                z14 = false;
            }
            z15 = false;
        }
        if (z12 || z13) {
            Log.w((String) r4, "Skipping unsupported compressed or encrypted frame");
            parsableByteArray.setPosition(i13);
            return null;
        }
        if (z11) {
            iRemoveUnsynchronization--;
            parsableByteArray.skipBytes(1);
        }
        if (z15) {
            iRemoveUnsynchronization -= 4;
            parsableByteArray.skipBytes(4);
        }
        if (z14) {
            iRemoveUnsynchronization = removeUnsynchronization(parsableByteArray, iRemoveUnsynchronization);
        }
        try {
            if (unsignedByte == 84 && unsignedByte2 == 88 && unsignedByte3 == 88 && (i11 == 2 || unsignedByte4 == 88)) {
                id3FrameDecodeBinaryFrame = decodeTxxxFrame(parsableByteArray, iRemoveUnsynchronization);
            } else if (unsignedByte == 84) {
                id3FrameDecodeBinaryFrame = decodeTextInformationFrame(parsableByteArray, iRemoveUnsynchronization, getFrameId(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4));
            } else if (unsignedByte == 87 && unsignedByte2 == 88 && unsignedByte3 == 88 && (i11 == 2 || unsignedByte4 == 88)) {
                id3FrameDecodeBinaryFrame = decodeWxxxFrame(parsableByteArray, iRemoveUnsynchronization);
            } else if (unsignedByte == 87) {
                id3FrameDecodeBinaryFrame = decodeUrlLinkFrame(parsableByteArray, iRemoveUnsynchronization, getFrameId(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4));
            } else if (unsignedByte == 80 && unsignedByte2 == 82 && unsignedByte3 == 73 && unsignedByte4 == 86) {
                id3FrameDecodeBinaryFrame = decodePrivFrame(parsableByteArray, iRemoveUnsynchronization);
            } else if (unsignedByte == 71 && unsignedByte2 == 69 && unsignedByte3 == 79 && (unsignedByte4 == 66 || i11 == 2)) {
                id3FrameDecodeBinaryFrame = decodeGeobFrame(parsableByteArray, iRemoveUnsynchronization);
            } else if (i11 == 2) {
                if (unsignedByte == 80 && unsignedByte2 == 73 && unsignedByte3 == 67) {
                    id3FrameDecodeBinaryFrame = decodeApicFrame(parsableByteArray, iRemoveUnsynchronization, i11);
                } else if (unsignedByte != 67 && unsignedByte2 == 79 && unsignedByte3 == 77 && (unsignedByte4 == 77 || i11 == 2)) {
                    id3FrameDecodeBinaryFrame = decodeCommentFrame(parsableByteArray, iRemoveUnsynchronization);
                } else if (unsignedByte != 67 && unsignedByte2 == 72 && unsignedByte3 == 65 && unsignedByte4 == 80) {
                    id3FrameDecodeBinaryFrame = decodeChapterFrame(parsableByteArray, iRemoveUnsynchronization, i11, z10, i12, framePredicate);
                } else if (unsignedByte != 67 && unsignedByte2 == 84 && unsignedByte3 == 79 && unsignedByte4 == 67) {
                    id3FrameDecodeBinaryFrame = decodeChapterTOCFrame(parsableByteArray, iRemoveUnsynchronization, i11, z10, i12, framePredicate);
                } else {
                    id3FrameDecodeBinaryFrame = decodeBinaryFrame(parsableByteArray, iRemoveUnsynchronization, getFrameId(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4));
                }
            } else if (unsignedByte == 65 && unsignedByte2 == 80 && unsignedByte3 == 73 && unsignedByte4 == 67) {
                id3FrameDecodeBinaryFrame = decodeApicFrame(parsableByteArray, iRemoveUnsynchronization, i11);
            } else if (unsignedByte != 67) {
                if (unsignedByte != 67) {
                    if (unsignedByte != 67) {
                        id3FrameDecodeBinaryFrame = decodeBinaryFrame(parsableByteArray, iRemoveUnsynchronization, getFrameId(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4));
                    } else {
                        id3FrameDecodeBinaryFrame = decodeBinaryFrame(parsableByteArray, iRemoveUnsynchronization, getFrameId(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4));
                    }
                } else if (unsignedByte != 67) {
                    id3FrameDecodeBinaryFrame = decodeBinaryFrame(parsableByteArray, iRemoveUnsynchronization, getFrameId(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4));
                } else {
                    id3FrameDecodeBinaryFrame = decodeBinaryFrame(parsableByteArray, iRemoveUnsynchronization, getFrameId(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4));
                }
            } else if (unsignedByte != 67) {
                if (unsignedByte != 67) {
                    id3FrameDecodeBinaryFrame = decodeBinaryFrame(parsableByteArray, iRemoveUnsynchronization, getFrameId(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4));
                } else {
                    id3FrameDecodeBinaryFrame = decodeBinaryFrame(parsableByteArray, iRemoveUnsynchronization, getFrameId(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4));
                }
            } else if (unsignedByte != 67) {
                id3FrameDecodeBinaryFrame = decodeBinaryFrame(parsableByteArray, iRemoveUnsynchronization, getFrameId(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4));
            } else {
                id3FrameDecodeBinaryFrame = decodeBinaryFrame(parsableByteArray, iRemoveUnsynchronization, getFrameId(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4));
            }
            if (id3FrameDecodeBinaryFrame == null) {
                Log.w(TAG, "Failed to decode frame: id=" + getFrameId(i11, unsignedByte, unsignedByte2, unsignedByte3, unsignedByte4) + ", frameSize=" + iRemoveUnsynchronization);
            }
            parsableByteArray.setPosition(i13);
            return id3FrameDecodeBinaryFrame;
        } catch (UnsupportedEncodingException unused) {
            Log.w((String) r4, "Unsupported character encoding");
            return null;
        } finally {
            parsableByteArray.setPosition(i13);
        }
    }

    private static GeobFrame decodeGeobFrame(ParsableByteArray parsableByteArray, int i11) throws UnsupportedEncodingException {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        String charsetName = getCharsetName(unsignedByte);
        int i12 = i11 - 1;
        byte[] bArr = new byte[i12];
        parsableByteArray.readBytes(bArr, 0, i12);
        int iIndexOfZeroByte = indexOfZeroByte(bArr, 0);
        String str = new String(bArr, 0, iIndexOfZeroByte, "ISO-8859-1");
        int i13 = iIndexOfZeroByte + 1;
        int iIndexOfEos = indexOfEos(bArr, i13, unsignedByte);
        String strDecodeStringIfValid = decodeStringIfValid(bArr, i13, iIndexOfEos, charsetName);
        int iDelimiterLength = iIndexOfEos + delimiterLength(unsignedByte);
        int iIndexOfEos2 = indexOfEos(bArr, iDelimiterLength, unsignedByte);
        return new GeobFrame(str, strDecodeStringIfValid, decodeStringIfValid(bArr, iDelimiterLength, iIndexOfEos2, charsetName), copyOfRangeIfValid(bArr, iIndexOfEos2 + delimiterLength(unsignedByte), i12));
    }

    private static Id3Header decodeHeader(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.bytesLeft() < 10) {
            Log.w(TAG, "Data too short to be an ID3 tag");
            return null;
        }
        int unsignedInt24 = parsableByteArray.readUnsignedInt24();
        if (unsignedInt24 != ID3_TAG) {
            Log.w(TAG, "Unexpected first three bytes of ID3 tag header: " + unsignedInt24);
            return null;
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        parsableByteArray.skipBytes(1);
        int unsignedByte2 = parsableByteArray.readUnsignedByte();
        int synchSafeInt = parsableByteArray.readSynchSafeInt();
        if (unsignedByte == 2) {
            if ((unsignedByte2 & 64) != 0) {
                Log.w(TAG, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (unsignedByte == 3) {
            if ((unsignedByte2 & 64) != 0) {
                int i11 = parsableByteArray.readInt();
                parsableByteArray.skipBytes(i11);
                synchSafeInt -= i11 + 4;
            }
        } else {
            if (unsignedByte != 4) {
                Log.w(TAG, "Skipped ID3 tag with unsupported majorVersion=" + unsignedByte);
                return null;
            }
            if ((unsignedByte2 & 64) != 0) {
                int synchSafeInt2 = parsableByteArray.readSynchSafeInt();
                parsableByteArray.skipBytes(synchSafeInt2 - 4);
                synchSafeInt -= synchSafeInt2;
            }
            if ((unsignedByte2 & 16) != 0) {
                synchSafeInt -= 10;
            }
        }
        return new Id3Header(unsignedByte, unsignedByte < 4 && (unsignedByte2 & 128) != 0, synchSafeInt);
    }

    private static PrivFrame decodePrivFrame(ParsableByteArray parsableByteArray, int i11) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i11];
        parsableByteArray.readBytes(bArr, 0, i11);
        int iIndexOfZeroByte = indexOfZeroByte(bArr, 0);
        return new PrivFrame(new String(bArr, 0, iIndexOfZeroByte, "ISO-8859-1"), copyOfRangeIfValid(bArr, iIndexOfZeroByte + 1, i11));
    }

    private static String decodeStringIfValid(byte[] bArr, int i11, int i12, String str) throws UnsupportedEncodingException {
        return (i12 <= i11 || i12 > bArr.length) ? "" : new String(bArr, i11, i12 - i11, str);
    }

    private static TextInformationFrame decodeTextInformationFrame(ParsableByteArray parsableByteArray, int i11, String str) throws UnsupportedEncodingException {
        if (i11 < 1) {
            return null;
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        String charsetName = getCharsetName(unsignedByte);
        int i12 = i11 - 1;
        byte[] bArr = new byte[i12];
        parsableByteArray.readBytes(bArr, 0, i12);
        return new TextInformationFrame(str, null, new String(bArr, 0, indexOfEos(bArr, 0, unsignedByte), charsetName));
    }

    private static TextInformationFrame decodeTxxxFrame(ParsableByteArray parsableByteArray, int i11) throws UnsupportedEncodingException {
        if (i11 < 1) {
            return null;
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        String charsetName = getCharsetName(unsignedByte);
        int i12 = i11 - 1;
        byte[] bArr = new byte[i12];
        parsableByteArray.readBytes(bArr, 0, i12);
        int iIndexOfEos = indexOfEos(bArr, 0, unsignedByte);
        String str = new String(bArr, 0, iIndexOfEos, charsetName);
        int iDelimiterLength = iIndexOfEos + delimiterLength(unsignedByte);
        return new TextInformationFrame("TXXX", str, decodeStringIfValid(bArr, iDelimiterLength, indexOfEos(bArr, iDelimiterLength, unsignedByte), charsetName));
    }

    private static UrlLinkFrame decodeUrlLinkFrame(ParsableByteArray parsableByteArray, int i11, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i11];
        parsableByteArray.readBytes(bArr, 0, i11);
        return new UrlLinkFrame(str, null, new String(bArr, 0, indexOfZeroByte(bArr, 0), "ISO-8859-1"));
    }

    private static UrlLinkFrame decodeWxxxFrame(ParsableByteArray parsableByteArray, int i11) throws UnsupportedEncodingException {
        if (i11 < 1) {
            return null;
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        String charsetName = getCharsetName(unsignedByte);
        int i12 = i11 - 1;
        byte[] bArr = new byte[i12];
        parsableByteArray.readBytes(bArr, 0, i12);
        int iIndexOfEos = indexOfEos(bArr, 0, unsignedByte);
        String str = new String(bArr, 0, iIndexOfEos, charsetName);
        int iDelimiterLength = iIndexOfEos + delimiterLength(unsignedByte);
        return new UrlLinkFrame("WXXX", str, decodeStringIfValid(bArr, iDelimiterLength, indexOfZeroByte(bArr, iDelimiterLength), "ISO-8859-1"));
    }

    private static int delimiterLength(int i11) {
        return (i11 == 0 || i11 == 3) ? 1 : 2;
    }

    private static String getCharsetName(int i11) {
        if (i11 == 1) {
            return C.UTF16_NAME;
        }
        if (i11 != 2) {
            return i11 != 3 ? "ISO-8859-1" : "UTF-8";
        }
        return "UTF-16BE";
    }

    private static String getFrameId(int i11, int i12, int i13, int i14, int i15) {
        return i11 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15));
    }

    private static int indexOfEos(byte[] bArr, int i11, int i12) {
        int iIndexOfZeroByte = indexOfZeroByte(bArr, i11);
        if (i12 == 0 || i12 == 3) {
            return iIndexOfZeroByte;
        }
        while (iIndexOfZeroByte < bArr.length - 1) {
            if (iIndexOfZeroByte % 2 == 0 && bArr[iIndexOfZeroByte + 1] == 0) {
                return iIndexOfZeroByte;
            }
            iIndexOfZeroByte = indexOfZeroByte(bArr, iIndexOfZeroByte + 1);
        }
        return bArr.length;
    }

    private static int indexOfZeroByte(byte[] bArr, int i11) {
        while (i11 < bArr.length) {
            if (bArr[i11] == 0) {
                return i11;
            }
            i11++;
        }
        return bArr.length;
    }

    private static int removeUnsynchronization(ParsableByteArray parsableByteArray, int i11) {
        byte[] bArr = parsableByteArray.data;
        int position = parsableByteArray.getPosition();
        while (true) {
            int i12 = position + 1;
            if (i12 >= i11) {
                return i11;
            }
            if ((bArr[position] & 255) == 255 && bArr[i12] == 0) {
                System.arraycopy(bArr, position + 2, bArr, i12, (i11 - position) - 2);
                i11--;
            }
            position = i12;
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x008a A[PHI: r3
  0x008a: PHI (r3v16 int) = (r3v5 int), (r3v19 int) binds: [B:41:0x0087, B:33:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    private static boolean validateFrames(ParsableByteArray parsableByteArray, int i11, int i12, boolean z10) {
        int unsignedInt24;
        long unsignedInt25;
        int unsignedShort;
        int i13;
        int position = parsableByteArray.getPosition();
        while (true) {
            try {
                boolean z11 = true;
                if (parsableByteArray.bytesLeft() < i12) {
                    parsableByteArray.setPosition(position);
                    return true;
                }
                if (i11 >= 3) {
                    unsignedInt24 = parsableByteArray.readInt();
                    unsignedInt25 = parsableByteArray.readUnsignedInt();
                    unsignedShort = parsableByteArray.readUnsignedShort();
                } else {
                    unsignedInt24 = parsableByteArray.readUnsignedInt24();
                    unsignedInt25 = parsableByteArray.readUnsignedInt24();
                    unsignedShort = 0;
                }
                if (unsignedInt24 == 0 && unsignedInt25 == 0 && unsignedShort == 0) {
                    parsableByteArray.setPosition(position);
                    return true;
                }
                if (i11 == 4 && !z10) {
                    if ((8421504 & unsignedInt25) != 0) {
                        parsableByteArray.setPosition(position);
                        return false;
                    }
                    unsignedInt25 = (((unsignedInt25 >> 24) & 255) << 21) | (unsignedInt25 & 255) | (((unsignedInt25 >> 8) & 255) << 7) | (((unsignedInt25 >> 16) & 255) << 14);
                }
                if (i11 == 4) {
                    i13 = (unsignedShort & 64) != 0 ? 1 : 0;
                    if ((unsignedShort & 1) == 0) {
                        z11 = false;
                    }
                } else if (i11 == 3) {
                    i13 = (unsignedShort & 32) != 0 ? 1 : 0;
                    if ((unsignedShort & 128) == 0) {
                        z11 = false;
                    }
                } else {
                    i13 = 0;
                    z11 = false;
                }
                if (z11) {
                    i13 += 4;
                }
                if (unsignedInt25 < i13) {
                    parsableByteArray.setPosition(position);
                    return false;
                }
                if (parsableByteArray.bytesLeft() < unsignedInt25) {
                    parsableByteArray.setPosition(position);
                    return false;
                }
                parsableByteArray.skipBytes((int) unsignedInt25);
            } catch (Throwable th2) {
                parsableByteArray.setPosition(position);
                throw th2;
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.metadata.MetadataDecoder
    public Metadata decode(MetadataInputBuffer metadataInputBuffer) {
        ByteBuffer byteBuffer = metadataInputBuffer.data;
        return decode(byteBuffer.array(), byteBuffer.limit());
    }

    public Metadata decode(byte[] bArr, int i11) {
        ArrayList arrayList = new ArrayList();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i11);
        Id3Header id3HeaderDecodeHeader = decodeHeader(parsableByteArray);
        if (id3HeaderDecodeHeader == null) {
            return null;
        }
        int position = parsableByteArray.getPosition();
        int i12 = id3HeaderDecodeHeader.majorVersion == 2 ? 6 : 10;
        int iRemoveUnsynchronization = id3HeaderDecodeHeader.framesSize;
        if (id3HeaderDecodeHeader.isUnsynchronized) {
            iRemoveUnsynchronization = removeUnsynchronization(parsableByteArray, id3HeaderDecodeHeader.framesSize);
        }
        parsableByteArray.setLimit(position + iRemoveUnsynchronization);
        boolean z10 = false;
        if (!validateFrames(parsableByteArray, id3HeaderDecodeHeader.majorVersion, i12, false)) {
            if (id3HeaderDecodeHeader.majorVersion != 4 || !validateFrames(parsableByteArray, 4, i12, true)) {
                Log.w(TAG, "Failed to validate ID3 tag with majorVersion=" + id3HeaderDecodeHeader.majorVersion);
                return null;
            }
            z10 = true;
        }
        while (parsableByteArray.bytesLeft() >= i12) {
            Id3Frame id3FrameDecodeFrame = decodeFrame(id3HeaderDecodeHeader.majorVersion, parsableByteArray, z10, i12, this.framePredicate);
            if (id3FrameDecodeFrame != null) {
                arrayList.add(id3FrameDecodeFrame);
            }
        }
        return new Metadata(arrayList);
    }
}
