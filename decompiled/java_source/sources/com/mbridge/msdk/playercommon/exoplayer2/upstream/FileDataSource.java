package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import android.net.Uri;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes5.dex */
public final class FileDataSource implements DataSource {
    private long bytesRemaining;
    private RandomAccessFile file;
    private final TransferListener<? super FileDataSource> listener;
    private boolean opened;
    private Uri uri;

    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public FileDataSource() {
        this(null);
    }

    public FileDataSource(TransferListener<? super FileDataSource> transferListener) {
        this.listener = transferListener;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public void close() throws FileDataSourceException {
        this.uri = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.file;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.file = null;
                if (this.opened) {
                    this.opened = false;
                    TransferListener<? super FileDataSource> transferListener = this.listener;
                    if (transferListener != null) {
                        transferListener.onTransferEnd(this);
                    }
                }
            } catch (IOException e11) {
                throw new FileDataSourceException(e11);
            }
        } catch (Throwable th2) {
            this.file = null;
            if (this.opened) {
                this.opened = false;
                TransferListener<? super FileDataSource> transferListener2 = this.listener;
                if (transferListener2 != null) {
                    transferListener2.onTransferEnd(this);
                }
            }
            throw th2;
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws FileDataSourceException {
        try {
            this.uri = dataSpec.uri;
            RandomAccessFile randomAccessFile = new RandomAccessFile(dataSpec.uri.getPath(), CampaignEx.JSON_KEY_AD_R);
            this.file = randomAccessFile;
            randomAccessFile.seek(dataSpec.position);
            long length = dataSpec.length;
            if (length == -1) {
                length = this.file.length() - dataSpec.position;
            }
            this.bytesRemaining = length;
            if (length < 0) {
                throw new EOFException();
            }
            this.opened = true;
            TransferListener<? super FileDataSource> transferListener = this.listener;
            if (transferListener != null) {
                transferListener.onTransferStart(this, dataSpec);
            }
            return this.bytesRemaining;
        } catch (IOException e11) {
            throw new FileDataSourceException(e11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public int read(byte[] bArr, int i11, int i12) throws FileDataSourceException {
        if (i12 == 0) {
            return 0;
        }
        long j11 = this.bytesRemaining;
        if (j11 == 0) {
            return -1;
        }
        try {
            int i13 = this.file.read(bArr, i11, (int) Math.min(j11, i12));
            if (i13 > 0) {
                this.bytesRemaining -= (long) i13;
                TransferListener<? super FileDataSource> transferListener = this.listener;
                if (transferListener != null) {
                    transferListener.onBytesTransferred(this, i13);
                }
            }
            return i13;
        } catch (IOException e11) {
            throw new FileDataSourceException(e11);
        }
    }
}
