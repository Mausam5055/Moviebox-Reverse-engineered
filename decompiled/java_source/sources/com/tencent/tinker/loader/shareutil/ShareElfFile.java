package com.tencent.tinker.loader.shareutil;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ShareElfFile implements Closeable {
    public ElfHeader elfHeader;
    private final FileInputStream fis;
    public ProgramHeader[] programHeaders;
    public SectionHeader[] sectionHeaders;
    private final Map<String, SectionHeader> sectionNameToHeaderMap = new HashMap();

    public static class ElfHeader {
        public final short eEhSize;
        public final long eEntry;
        public final int eFlags;
        public final byte[] eIndent;
        public final short eMachine;
        public final short ePhEntSize;
        public final short ePhNum;
        public final long ePhOff;
        public final short eShEntSize;
        public final short eShNum;
        public final long eShOff;
        public final short eShStrNdx;
        public final short eType;
        public final int eVersion;

        private ElfHeader(FileChannel fileChannel) throws IOException {
            byte[] bArr = new byte[16];
            this.eIndent = bArr;
            fileChannel.position(0L);
            fileChannel.read(ByteBuffer.wrap(bArr));
            if (bArr[0] != 127 || bArr[1] != 69 || bArr[2] != 76 || bArr[3] != 70) {
                throw new IOException(String.format("bad elf magic: %x %x %x %x.", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3])));
            }
            ShareElfFile.assertInRange(bArr[4], 1, 2, "bad elf class: " + ((int) bArr[4]));
            ShareElfFile.assertInRange(bArr[5], 1, 2, "bad elf data encoding: " + ((int) bArr[5]));
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr[4] == 1 ? 36 : 48);
            byteBufferAllocate.order(bArr[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
            ShareElfFile.readUntilLimit(fileChannel, byteBufferAllocate, "failed to read rest part of ehdr.");
            this.eType = byteBufferAllocate.getShort();
            this.eMachine = byteBufferAllocate.getShort();
            int i11 = byteBufferAllocate.getInt();
            this.eVersion = i11;
            ShareElfFile.assertInRange(i11, 1, 1, "bad elf version: " + i11);
            byte b11 = bArr[4];
            if (b11 == 1) {
                this.eEntry = byteBufferAllocate.getInt();
                this.ePhOff = byteBufferAllocate.getInt();
                this.eShOff = byteBufferAllocate.getInt();
            } else {
                if (b11 != 2) {
                    throw new IOException("Unexpected elf class: " + ((int) bArr[4]));
                }
                this.eEntry = byteBufferAllocate.getLong();
                this.ePhOff = byteBufferAllocate.getLong();
                this.eShOff = byteBufferAllocate.getLong();
            }
            this.eFlags = byteBufferAllocate.getInt();
            this.eEhSize = byteBufferAllocate.getShort();
            this.ePhEntSize = byteBufferAllocate.getShort();
            this.ePhNum = byteBufferAllocate.getShort();
            this.eShEntSize = byteBufferAllocate.getShort();
            this.eShNum = byteBufferAllocate.getShort();
            this.eShStrNdx = byteBufferAllocate.getShort();
        }
    }

    public static class ProgramHeader {
        public final long pAlign;
        public final long pFileSize;
        public final int pFlags;
        public final long pMemSize;
        public final long pOffset;
        public final long pPddr;
        public final int pType;
        public final long pVddr;

        private ProgramHeader(ByteBuffer byteBuffer, int i11) throws IOException {
            if (i11 == 1) {
                this.pType = byteBuffer.getInt();
                this.pOffset = byteBuffer.getInt();
                this.pVddr = byteBuffer.getInt();
                this.pPddr = byteBuffer.getInt();
                this.pFileSize = byteBuffer.getInt();
                this.pMemSize = byteBuffer.getInt();
                this.pFlags = byteBuffer.getInt();
                this.pAlign = byteBuffer.getInt();
                return;
            }
            if (i11 != 2) {
                throw new IOException("Unexpected elf class: " + i11);
            }
            this.pType = byteBuffer.getInt();
            this.pFlags = byteBuffer.getInt();
            this.pOffset = byteBuffer.getLong();
            this.pVddr = byteBuffer.getLong();
            this.pPddr = byteBuffer.getLong();
            this.pFileSize = byteBuffer.getLong();
            this.pMemSize = byteBuffer.getLong();
            this.pAlign = byteBuffer.getLong();
        }
    }

    public static class SectionHeader {
        public final long shAddr;
        public final long shAddrAlign;
        public final long shEntSize;
        public final long shFlags;
        public final int shInfo;
        public final int shLink;
        public final int shName;
        public String shNameStr;
        public final long shOffset;
        public final long shSize;
        public final int shType;

        private SectionHeader(ByteBuffer byteBuffer, int i11) throws IOException {
            if (i11 == 1) {
                this.shName = byteBuffer.getInt();
                this.shType = byteBuffer.getInt();
                this.shFlags = byteBuffer.getInt();
                this.shAddr = byteBuffer.getInt();
                this.shOffset = byteBuffer.getInt();
                this.shSize = byteBuffer.getInt();
                this.shLink = byteBuffer.getInt();
                this.shInfo = byteBuffer.getInt();
                this.shAddrAlign = byteBuffer.getInt();
                this.shEntSize = byteBuffer.getInt();
            } else {
                if (i11 != 2) {
                    throw new IOException("Unexpected elf class: " + i11);
                }
                this.shName = byteBuffer.getInt();
                this.shType = byteBuffer.getInt();
                this.shFlags = byteBuffer.getLong();
                this.shAddr = byteBuffer.getLong();
                this.shOffset = byteBuffer.getLong();
                this.shSize = byteBuffer.getLong();
                this.shLink = byteBuffer.getInt();
                this.shInfo = byteBuffer.getInt();
                this.shAddrAlign = byteBuffer.getLong();
                this.shEntSize = byteBuffer.getLong();
            }
            this.shNameStr = null;
        }
    }

    public ShareElfFile(File file) throws IOException {
        SectionHeader[] sectionHeaderArr;
        this.elfHeader = null;
        this.programHeaders = null;
        this.sectionHeaders = null;
        FileInputStream fileInputStream = new FileInputStream(file);
        this.fis = fileInputStream;
        FileChannel channel = fileInputStream.getChannel();
        this.elfHeader = new ElfHeader(channel);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(128);
        byteBufferAllocate.limit(this.elfHeader.ePhEntSize);
        byteBufferAllocate.order(this.elfHeader.eIndent[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
        channel.position(this.elfHeader.ePhOff);
        this.programHeaders = new ProgramHeader[this.elfHeader.ePhNum];
        for (int i11 = 0; i11 < this.programHeaders.length; i11++) {
            readUntilLimit(channel, byteBufferAllocate, "failed to read phdr.");
            this.programHeaders[i11] = new ProgramHeader(byteBufferAllocate, this.elfHeader.eIndent[4]);
        }
        channel.position(this.elfHeader.eShOff);
        byteBufferAllocate.limit(this.elfHeader.eShEntSize);
        this.sectionHeaders = new SectionHeader[this.elfHeader.eShNum];
        int i12 = 0;
        while (true) {
            sectionHeaderArr = this.sectionHeaders;
            if (i12 >= sectionHeaderArr.length) {
                break;
            }
            readUntilLimit(channel, byteBufferAllocate, "failed to read shdr.");
            this.sectionHeaders[i12] = new SectionHeader(byteBufferAllocate, this.elfHeader.eIndent[4]);
            i12++;
        }
        short s11 = this.elfHeader.eShStrNdx;
        if (s11 > 0) {
            ByteBuffer section = getSection(sectionHeaderArr[s11]);
            for (SectionHeader sectionHeader : this.sectionHeaders) {
                section.position(sectionHeader.shName);
                String cString = readCString(section);
                sectionHeader.shNameStr = cString;
                this.sectionNameToHeaderMap.put(cString, sectionHeader);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void assertInRange(int i11, int i12, int i13, String str) throws IOException {
        if (i11 < i12 || i11 > i13) {
            throw new IOException(str);
        }
    }

    public static int getFileTypeByMagic(File file) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            byte[] bArr = new byte[4];
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileInputStream2.read(bArr);
                byte b11 = bArr[0];
                if (b11 == 100 && bArr[1] == 101 && bArr[2] == 121 && bArr[3] == 10) {
                    try {
                        fileInputStream2.close();
                    } catch (Throwable unused) {
                    }
                    return 0;
                }
                if (b11 == 127 && bArr[1] == 69 && bArr[2] == 76 && bArr[3] == 70) {
                    try {
                        fileInputStream2.close();
                    } catch (Throwable unused2) {
                    }
                    return 1;
                }
                try {
                    fileInputStream2.close();
                    return -1;
                } catch (Throwable unused3) {
                    return -1;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused4) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String readCString(ByteBuffer byteBuffer) {
        byte[] bArrArray = byteBuffer.array();
        int iPosition = byteBuffer.position();
        while (byteBuffer.hasRemaining() && bArrArray[byteBuffer.position()] != 0) {
            byteBuffer.position(byteBuffer.position() + 1);
        }
        byteBuffer.position(byteBuffer.position() + 1);
        return new String(bArrArray, iPosition, (byteBuffer.position() - iPosition) - 1, Charset.forName("ASCII"));
    }

    public static void readUntilLimit(FileChannel fileChannel, ByteBuffer byteBuffer, String str) throws IOException {
        byteBuffer.rewind();
        int i11 = fileChannel.read(byteBuffer);
        if (i11 == byteBuffer.limit()) {
            byteBuffer.flip();
            return;
        }
        throw new IOException(str + " Rest bytes insufficient, expect to read " + byteBuffer.limit() + " bytes but only " + i11 + " bytes were read.");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.fis.close();
        this.sectionNameToHeaderMap.clear();
        this.programHeaders = null;
        this.sectionHeaders = null;
    }

    public ByteBuffer getSection(SectionHeader sectionHeader) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) sectionHeader.shSize);
        this.fis.getChannel().position(sectionHeader.shOffset);
        readUntilLimit(this.fis.getChannel(), byteBufferAllocate, "failed to read section: " + sectionHeader.shNameStr);
        return byteBufferAllocate;
    }
}
