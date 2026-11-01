package com.tencent.tinker.loader.shareutil;

import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;

/* JADX INFO: loaded from: classes5.dex */
public class ShareFileLockHelper implements Closeable {
    private final FileLock fileLock;
    private final FileOutputStream outputStream;

    private ShareFileLockHelper(File file) throws IOException {
        this.outputStream = new FileOutputStream(file);
        FileLock fileLockLock = null;
        int i11 = 0;
        Exception e11 = null;
        while (i11 < 3) {
            i11++;
            try {
                fileLockLock = this.outputStream.getChannel().lock();
                if (fileLockLock != null) {
                    break;
                }
            } catch (Exception e12) {
                e11 = e12;
                ShareTinkerLog.e("Tinker.FileLockHelper", "getInfoLock Thread failed time:10", new Object[0]);
            }
            try {
                Thread.sleep(10L);
            } catch (Exception e13) {
                ShareTinkerLog.e("Tinker.FileLockHelper", "getInfoLock Thread sleep exception", e13);
            }
        }
        if (fileLockLock != null) {
            this.fileLock = fileLockLock;
            return;
        }
        throw new IOException("Tinker Exception:FileLockHelper lock file failed: " + file.getAbsolutePath(), e11);
    }

    public static ShareFileLockHelper getFileLock(File file) throws IOException {
        return new ShareFileLockHelper(file);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            FileLock fileLock = this.fileLock;
            if (fileLock != null) {
                fileLock.release();
            }
        } finally {
            FileOutputStream fileOutputStream = this.outputStream;
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
        }
    }
}
