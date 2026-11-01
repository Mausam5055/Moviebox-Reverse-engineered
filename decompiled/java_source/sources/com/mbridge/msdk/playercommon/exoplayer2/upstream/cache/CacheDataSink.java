package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.ReusableBufferedOutputStream;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public final class CacheDataSink implements DataSink {
    public static final int DEFAULT_BUFFER_SIZE = 20480;
    private final int bufferSize;
    private ReusableBufferedOutputStream bufferedOutputStream;
    private final Cache cache;
    private DataSpec dataSpec;
    private long dataSpecBytesWritten;
    private File file;
    private final long maxCacheFileSize;
    private OutputStream outputStream;
    private long outputStreamBytesWritten;
    private final boolean syncFileDescriptor;
    private FileOutputStream underlyingFileOutputStream;

    public static class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public CacheDataSink(Cache cache, long j11) {
        this(cache, j11, DEFAULT_BUFFER_SIZE, true);
    }

    public CacheDataSink(Cache cache, long j11, int i11) {
        this(cache, j11, i11, true);
    }

    public CacheDataSink(Cache cache, long j11, int i11, boolean z10) {
        this.cache = (Cache) Assertions.checkNotNull(cache);
        this.maxCacheFileSize = j11;
        this.bufferSize = i11;
        this.syncFileDescriptor = z10;
    }

    public CacheDataSink(Cache cache, long j11, boolean z10) {
        this(cache, j11, DEFAULT_BUFFER_SIZE, z10);
    }

    private void closeCurrentOutputStream() throws IOException {
        OutputStream outputStream = this.outputStream;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            if (this.syncFileDescriptor) {
                this.underlyingFileOutputStream.getFD().sync();
            }
            Util.closeQuietly(this.outputStream);
            this.outputStream = null;
            File file = this.file;
            this.file = null;
            this.cache.commitFile(file);
        } catch (Throwable th2) {
            Util.closeQuietly(this.outputStream);
            this.outputStream = null;
            File file2 = this.file;
            this.file = null;
            file2.delete();
            throw th2;
        }
    }

    private void openNextOutputStream() throws IOException {
        long j11 = this.dataSpec.length;
        long jMin = j11 == -1 ? this.maxCacheFileSize : Math.min(j11 - this.dataSpecBytesWritten, this.maxCacheFileSize);
        Cache cache = this.cache;
        DataSpec dataSpec = this.dataSpec;
        this.file = cache.startFile(dataSpec.key, this.dataSpecBytesWritten + dataSpec.absoluteStreamPosition, jMin);
        FileOutputStream fileOutputStream = new FileOutputStream(this.file);
        this.underlyingFileOutputStream = fileOutputStream;
        if (this.bufferSize > 0) {
            ReusableBufferedOutputStream reusableBufferedOutputStream = this.bufferedOutputStream;
            if (reusableBufferedOutputStream == null) {
                this.bufferedOutputStream = new ReusableBufferedOutputStream(this.underlyingFileOutputStream, this.bufferSize);
            } else {
                reusableBufferedOutputStream.reset(fileOutputStream);
            }
            this.outputStream = this.bufferedOutputStream;
        } else {
            this.outputStream = fileOutputStream;
        }
        this.outputStreamBytesWritten = 0L;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink
    public void close() throws CacheDataSinkException {
        if (this.dataSpec == null) {
            return;
        }
        try {
            closeCurrentOutputStream();
        } catch (IOException e11) {
            throw new CacheDataSinkException(e11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink
    public void open(DataSpec dataSpec) throws CacheDataSinkException {
        if (dataSpec.length == -1 && !dataSpec.isFlagSet(2)) {
            this.dataSpec = null;
            return;
        }
        this.dataSpec = dataSpec;
        this.dataSpecBytesWritten = 0L;
        try {
            openNextOutputStream();
        } catch (IOException e11) {
            throw new CacheDataSinkException(e11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink
    public void write(byte[] bArr, int i11, int i12) throws CacheDataSinkException {
        if (this.dataSpec == null) {
            return;
        }
        int i13 = 0;
        while (i13 < i12) {
            try {
                if (this.outputStreamBytesWritten == this.maxCacheFileSize) {
                    closeCurrentOutputStream();
                    openNextOutputStream();
                }
                int iMin = (int) Math.min(i12 - i13, this.maxCacheFileSize - this.outputStreamBytesWritten);
                this.outputStream.write(bArr, i11 + i13, iMin);
                i13 += iMin;
                long j11 = iMin;
                this.outputStreamBytesWritten += j11;
                this.dataSpecBytesWritten += j11;
            } catch (IOException e11) {
                throw new CacheDataSinkException(e11);
            }
        }
    }
}
