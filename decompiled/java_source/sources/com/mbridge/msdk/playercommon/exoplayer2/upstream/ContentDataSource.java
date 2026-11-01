package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes5.dex */
public final class ContentDataSource implements DataSource {
    private AssetFileDescriptor assetFileDescriptor;
    private long bytesRemaining;
    private FileInputStream inputStream;
    private final TransferListener<? super ContentDataSource> listener;
    private boolean opened;
    private final ContentResolver resolver;
    private Uri uri;

    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        this(context, null);
    }

    public ContentDataSource(Context context, TransferListener<? super ContentDataSource> transferListener) {
        this.resolver = context.getContentResolver();
        this.listener = transferListener;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public void close() throws ContentDataSourceException {
        this.uri = null;
        try {
            try {
                FileInputStream fileInputStream = this.inputStream;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.inputStream = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.assetFileDescriptor;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.assetFileDescriptor = null;
                        if (this.opened) {
                            this.opened = false;
                            TransferListener<? super ContentDataSource> transferListener = this.listener;
                            if (transferListener != null) {
                                transferListener.onTransferEnd(this);
                            }
                        }
                    } catch (IOException e11) {
                        throw new ContentDataSourceException(e11);
                    }
                } catch (Throwable th2) {
                    this.assetFileDescriptor = null;
                    if (this.opened) {
                        this.opened = false;
                        TransferListener<? super ContentDataSource> transferListener2 = this.listener;
                        if (transferListener2 != null) {
                            transferListener2.onTransferEnd(this);
                        }
                    }
                    throw th2;
                }
            } catch (IOException e12) {
                throw new ContentDataSourceException(e12);
            }
        } catch (Throwable th3) {
            this.inputStream = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.assetFileDescriptor;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.assetFileDescriptor = null;
                    if (this.opened) {
                        this.opened = false;
                        TransferListener<? super ContentDataSource> transferListener3 = this.listener;
                        if (transferListener3 != null) {
                            transferListener3.onTransferEnd(this);
                        }
                    }
                    throw th3;
                } catch (IOException e13) {
                    throw new ContentDataSourceException(e13);
                }
            } catch (Throwable th4) {
                this.assetFileDescriptor = null;
                if (this.opened) {
                    this.opened = false;
                    TransferListener<? super ContentDataSource> transferListener4 = this.listener;
                    if (transferListener4 != null) {
                        transferListener4.onTransferEnd(this);
                    }
                }
                throw th4;
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws ContentDataSourceException {
        try {
            Uri uri = dataSpec.uri;
            this.uri = uri;
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = this.resolver.openAssetFileDescriptor(uri, CampaignEx.JSON_KEY_AD_R);
            this.assetFileDescriptor = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new FileNotFoundException("Could not open file descriptor for: " + this.uri);
            }
            this.inputStream = new FileInputStream(this.assetFileDescriptor.getFileDescriptor());
            long startOffset = this.assetFileDescriptor.getStartOffset();
            long jSkip = this.inputStream.skip(dataSpec.position + startOffset) - startOffset;
            if (jSkip != dataSpec.position) {
                throw new EOFException();
            }
            long j11 = dataSpec.length;
            long jPosition = -1;
            if (j11 != -1) {
                this.bytesRemaining = j11;
            } else {
                long length = this.assetFileDescriptor.getLength();
                if (length == -1) {
                    FileChannel channel = this.inputStream.getChannel();
                    long size = channel.size();
                    if (size != 0) {
                        jPosition = size - channel.position();
                    }
                    this.bytesRemaining = jPosition;
                } else {
                    this.bytesRemaining = length - jSkip;
                }
            }
            this.opened = true;
            TransferListener<? super ContentDataSource> transferListener = this.listener;
            if (transferListener != null) {
                transferListener.onTransferStart(this, dataSpec);
            }
            return this.bytesRemaining;
        } catch (IOException e11) {
            throw new ContentDataSourceException(e11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public int read(byte[] bArr, int i11, int i12) throws ContentDataSourceException {
        if (i12 == 0) {
            return 0;
        }
        long j11 = this.bytesRemaining;
        if (j11 == 0) {
            return -1;
        }
        if (j11 != -1) {
            try {
                i12 = (int) Math.min(j11, i12);
            } catch (IOException e11) {
                throw new ContentDataSourceException(e11);
            }
        }
        int i13 = this.inputStream.read(bArr, i11, i12);
        if (i13 == -1) {
            if (this.bytesRemaining == -1) {
                return -1;
            }
            throw new ContentDataSourceException(new EOFException());
        }
        long j12 = this.bytesRemaining;
        if (j12 != -1) {
            this.bytesRemaining = j12 - ((long) i13);
        }
        TransferListener<? super ContentDataSource> transferListener = this.listener;
        if (transferListener != null) {
            transferListener.onBytesTransferred(this, i13);
        }
        return i13;
    }
}
