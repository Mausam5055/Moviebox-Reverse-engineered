package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.TaskCancelException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.common.utils.CRC64;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.exception.InconsistentException;
import com.alibaba.sdk.android.oss.model.GetObjectRequest;
import com.alibaba.sdk.android.oss.model.GetObjectResult;
import com.alibaba.sdk.android.oss.model.HeadObjectRequest;
import com.alibaba.sdk.android.oss.model.HeadObjectResult;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import com.alibaba.sdk.android.oss.model.OSSResult;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.alibaba.sdk.android.oss.model.Range;
import com.alibaba.sdk.android.oss.model.ResumableDownloadRequest;
import com.alibaba.sdk.android.oss.model.ResumableDownloadResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.zip.CheckedInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ResumableDownloadTask<Requst extends ResumableDownloadRequest, Result extends ResumableDownloadResult> implements Callable<Result> {
    protected final int CPU_SIZE;
    protected final int KEEP_ALIVE_TIME;
    protected final int MAX_CORE_POOL_SIZE;
    protected final int MAX_IMUM_POOL_SIZE;
    protected final int MAX_QUEUE_SIZE;
    protected String checkpointPath;
    protected long completedPartSize;
    protected long downloadPartSize;
    private CheckPoint mCheckPoint;
    private OSSCompletedCallback mCompletedCallback;
    private ExecutionContext mContext;
    protected Exception mDownloadException;
    protected Object mLock;
    private InternalRequestOperation mOperation;
    protected long mPartExceptionCount;
    protected ThreadPoolExecutor mPoolExecutor;
    private OSSProgressCallback mProgressCallback;
    private ResumableDownloadRequest mRequest;

    static class CheckPoint implements Serializable {
        private static final long serialVersionUID = -8470273912385636504L;
        public String bucketName;
        public String downloadFile;
        public long downloadLength;
        public FileStat fileStat;
        public int md5;
        public String objectKey;
        public ArrayList<DownloadPart> parts;

        CheckPoint() {
        }

        private void assign(CheckPoint checkPoint) {
            this.md5 = checkPoint.md5;
            this.downloadFile = checkPoint.downloadFile;
            this.bucketName = checkPoint.bucketName;
            this.objectKey = checkPoint.objectKey;
            this.fileStat = checkPoint.fileStat;
            this.parts = checkPoint.parts;
            this.downloadLength = checkPoint.downloadLength;
        }

        public synchronized void dump(String str) throws IOException {
            FileOutputStream fileOutputStream;
            Throwable th2;
            ObjectOutputStream objectOutputStream;
            this.md5 = hashCode();
            try {
                fileOutputStream = new FileOutputStream(str);
                try {
                    objectOutputStream = new ObjectOutputStream(fileOutputStream);
                    try {
                        objectOutputStream.writeObject(this);
                        objectOutputStream.close();
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2 = th3;
                        if (objectOutputStream != null) {
                            objectOutputStream.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        throw th2;
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    objectOutputStream = null;
                }
            } catch (Throwable th5) {
                fileOutputStream = null;
                th2 = th5;
                objectOutputStream = null;
            }
        }

        public int hashCode() {
            String str = this.bucketName;
            int iHashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
            String str2 = this.downloadFile;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.objectKey;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            FileStat fileStat = this.fileStat;
            int iHashCode4 = (iHashCode3 + (fileStat == null ? 0 : fileStat.hashCode())) * 31;
            ArrayList<DownloadPart> arrayList = this.parts;
            int iHashCode5 = (iHashCode4 + (arrayList != null ? arrayList.hashCode() : 0)) * 31;
            long j11 = this.downloadLength;
            return iHashCode5 + ((int) (j11 ^ (j11 >>> 32)));
        }

        public synchronized boolean isValid(InternalRequestOperation internalRequestOperation) throws ServiceException, ClientException {
            if (this.md5 != hashCode()) {
                return false;
            }
            FileStat fileStat = FileStat.getFileStat(internalRequestOperation, this.bucketName, this.objectKey);
            FileStat fileStat2 = this.fileStat;
            Date date = fileStat2.lastModified;
            if (date == null) {
                if (fileStat2.fileLength != fileStat.fileLength || !fileStat2.etag.equals(fileStat.etag)) {
                    return false;
                }
            } else if (fileStat2.fileLength != fileStat.fileLength || !date.equals(fileStat.lastModified) || !this.fileStat.etag.equals(fileStat.etag)) {
                return false;
            }
            return true;
        }

        public synchronized void load(String str) throws IOException, ClassNotFoundException {
            FileInputStream fileInputStream;
            Throwable th2;
            ObjectInputStream objectInputStream;
            try {
                try {
                    fileInputStream = new FileInputStream(str);
                    try {
                        objectInputStream = new ObjectInputStream(fileInputStream);
                        try {
                            assign((CheckPoint) objectInputStream.readObject());
                            objectInputStream.close();
                            fileInputStream.close();
                        } catch (Throwable th3) {
                            th2 = th3;
                            if (objectInputStream != null) {
                                objectInputStream.close();
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            throw th2;
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        objectInputStream = null;
                    }
                } catch (Throwable th5) {
                    fileInputStream = null;
                    th2 = th5;
                    objectInputStream = null;
                }
            } catch (Throwable th6) {
                throw th6;
            }
        }

        public synchronized void update(int i11, boolean z10) throws IOException {
            this.parts.get(i11).isCompleted = z10;
            this.downloadLength += this.parts.get(i11).length;
        }
    }

    class DownloadFileResult extends OSSResult {
        public ObjectMetadata metadata;
        public ArrayList<DownloadPartResult> partResults;

        DownloadFileResult() {
        }
    }

    static class DownloadPart implements Serializable {
        private static final long serialVersionUID = -3506020776131733942L;
        public long crc;
        public long end;
        public long fileStart;
        public boolean isCompleted;
        public long length;
        public int partNumber;
        public long start;

        DownloadPart() {
        }

        public int hashCode() {
            int i11 = (((this.partNumber + 31) * 31) + (this.isCompleted ? 1231 : 1237)) * 31;
            long j11 = this.end;
            int i12 = (i11 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.start;
            long j13 = this.crc;
            return ((i12 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + ((int) (j13 ^ (j13 >>> 32)));
        }
    }

    static class DownloadPartResult {
        public Long clientCRC;
        public long length;
        public int partNumber;
        public String requestId;

        DownloadPartResult() {
        }
    }

    static class FileStat implements Serializable {
        private static final long serialVersionUID = 3896323364904643963L;
        public String etag;
        public long fileLength;
        public Date lastModified;
        public String md5;
        public String requestId;
        public Long serverCRC;

        FileStat() {
        }

        public static FileStat getFileStat(InternalRequestOperation internalRequestOperation, String str, String str2) throws ServiceException, ClientException {
            HeadObjectResult headObjectResult = (HeadObjectResult) internalRequestOperation.headObject(new HeadObjectRequest(str, str2), null).getResult();
            FileStat fileStat = new FileStat();
            fileStat.fileLength = headObjectResult.getMetadata().getContentLength();
            fileStat.etag = headObjectResult.getMetadata().getETag();
            fileStat.lastModified = headObjectResult.getMetadata().getLastModified();
            fileStat.serverCRC = headObjectResult.getServerCRC();
            fileStat.requestId = headObjectResult.getRequestId();
            return fileStat;
        }

        public int hashCode() {
            String str = this.etag;
            int iHashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
            Date date = this.lastModified;
            int iHashCode2 = (iHashCode + (date != null ? date.hashCode() : 0)) * 31;
            long j11 = this.fileLength;
            return iHashCode2 + ((int) (j11 ^ (j11 >>> 32)));
        }
    }

    ResumableDownloadTask(InternalRequestOperation internalRequestOperation, ResumableDownloadRequest resumableDownloadRequest, OSSCompletedCallback oSSCompletedCallback, ExecutionContext executionContext) {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors() * 2;
        this.CPU_SIZE = iAvailableProcessors;
        int i11 = iAvailableProcessors < 5 ? iAvailableProcessors : 5;
        this.MAX_CORE_POOL_SIZE = i11;
        this.MAX_IMUM_POOL_SIZE = iAvailableProcessors;
        this.KEEP_ALIVE_TIME = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
        this.MAX_QUEUE_SIZE = 5000;
        this.mPoolExecutor = new ThreadPoolExecutor(i11, iAvailableProcessors, 3000L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(5000), new ThreadFactory() { // from class: com.alibaba.sdk.android.oss.internal.ResumableDownloadTask.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "oss-android-multipart-thread");
            }
        });
        this.mLock = new Object();
        this.mRequest = resumableDownloadRequest;
        this.mOperation = internalRequestOperation;
        this.mCompletedCallback = oSSCompletedCallback;
        this.mContext = executionContext;
        this.mProgressCallback = resumableDownloadRequest.getProgressListener();
    }

    private static Long calcObjectCRCFromParts(List<DownloadPartResult> list) {
        long jCombine = 0;
        for (DownloadPartResult downloadPartResult : list) {
            Long l11 = downloadPartResult.clientCRC;
            if (l11 == null || downloadPartResult.length <= 0) {
                return null;
            }
            jCombine = CRC64.combine(jCombine, l11.longValue(), downloadPartResult.length);
        }
        return new Long(jCombine);
    }

    private void copyFile(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i11);
            }
        }
    }

    private Range correctRange(Range range, long j11) {
        long begin = 0;
        if (range != null) {
            begin = range.getBegin() != -1 ? range.getBegin() : 0L;
            j11 = range.getEnd() == -1 ? j11 - begin : range.getEnd() - range.getBegin();
        }
        return new Range(begin, j11 + begin);
    }

    private void createFile(String str, long j11) throws Throwable {
        RandomAccessFile randomAccessFile;
        Throwable th2;
        try {
            randomAccessFile = new RandomAccessFile(new File(str), "rw");
            try {
                randomAccessFile.setLength(j11);
                randomAccessFile.close();
            } catch (Throwable th3) {
                th2 = th3;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th2;
            }
        } catch (Throwable th4) {
            randomAccessFile = null;
            th2 = th4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:63:0x0189 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x018b A[Catch: IOException -> 0x0187, TRY_LEAVE, TryCatch #1 {IOException -> 0x0187, blocks: (B:60:0x0183, B:64:0x018b), top: B:70:0x0183 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0183 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public void downloadPart(ResumableDownloadTask<Requst, Result>.DownloadFileResult downloadFileResult, DownloadPart downloadPart) throws Throwable {
        InputStream inputStream;
        RandomAccessFile randomAccessFile = null;
        objectContent = null;
        InputStream objectContent = null;
        randomAccessFile = null;
        try {
            try {
                if (this.mContext.getCancellationHandler().isCancelled()) {
                    this.mPoolExecutor.getQueue().clear();
                }
                this.downloadPartSize++;
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.mRequest.getTempFilePath(), "rw");
                try {
                    randomAccessFile2.seek(downloadPart.fileStart);
                    Map<String, String> requestHeader = this.mRequest.getRequestHeader();
                    GetObjectRequest getObjectRequest = new GetObjectRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey());
                    getObjectRequest.setRange(new Range(downloadPart.start, downloadPart.end));
                    getObjectRequest.setRequestHeaders(requestHeader);
                    GetObjectResult getObjectResult = (GetObjectResult) this.mOperation.getObject(getObjectRequest, null).getResult();
                    objectContent = getObjectResult.getObjectContent();
                    byte[] bArr = new byte[(int) downloadPart.length];
                    if (this.mRequest.getCRC64() == OSSRequest.CRC64Config.YES) {
                        objectContent = new CheckedInputStream(objectContent, new CRC64());
                    }
                    while (true) {
                        long j11 = objectContent.read(bArr);
                        if (j11 == -1) {
                            break;
                        } else {
                            randomAccessFile2.write(bArr, 0, (int) j11);
                        }
                    }
                    synchronized (this.mLock) {
                        try {
                            DownloadPartResult downloadPartResult = new DownloadPartResult();
                            downloadPartResult.partNumber = downloadPart.partNumber;
                            downloadPartResult.requestId = getObjectResult.getRequestId();
                            downloadPartResult.length = getObjectResult.getContentLength();
                            if (this.mRequest.getCRC64() == OSSRequest.CRC64Config.YES) {
                                long value = ((CheckedInputStream) objectContent).getChecksum().getValue();
                                downloadPartResult.clientCRC = Long.valueOf(value);
                                downloadPart.crc = value;
                            }
                            downloadFileResult.partResults.add(downloadPartResult);
                            if (downloadFileResult.metadata == null) {
                                downloadFileResult.metadata = getObjectResult.getMetadata();
                            }
                            this.completedPartSize++;
                            if (!this.mContext.getCancellationHandler().isCancelled()) {
                                if (this.mCheckPoint.parts.size() == this.completedPartSize - this.mPartExceptionCount) {
                                    notifyMultipartThread();
                                }
                                this.mCheckPoint.update(downloadPart.partNumber, true);
                                if (this.mRequest.getEnableCheckPoint().booleanValue()) {
                                    this.mCheckPoint.dump(this.checkpointPath);
                                }
                                Range rangeCorrectRange = correctRange(this.mRequest.getRange(), this.mCheckPoint.fileStat.fileLength);
                                OSSProgressCallback oSSProgressCallback = this.mProgressCallback;
                                if (oSSProgressCallback != null) {
                                    oSSProgressCallback.onProgress(this.mRequest, this.mCheckPoint.downloadLength, rangeCorrectRange.getEnd() - rangeCorrectRange.getBegin());
                                }
                            } else if (this.downloadPartSize == this.completedPartSize - this.mPartExceptionCount) {
                                checkCancel();
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    randomAccessFile2.close();
                    objectContent.close();
                } catch (Exception e11) {
                    e = e11;
                    inputStream = objectContent;
                    randomAccessFile = randomAccessFile2;
                    try {
                        processException(e);
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                            } catch (IOException e12) {
                                OSSLog.logThrowable2Local(e12);
                                throw th;
                            }
                        } else if (inputStream != null) {
                            inputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    inputStream = objectContent;
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } else if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
            } catch (IOException e13) {
                OSSLog.logThrowable2Local(e13);
            }
        } catch (Exception e14) {
            e = e14;
            inputStream = null;
        } catch (Throwable th5) {
            th = th5;
            inputStream = null;
        }
    }

    private void initCheckPoint() throws Throwable {
        FileStat fileStat = FileStat.getFileStat(this.mOperation, this.mRequest.getBucketName(), this.mRequest.getObjectKey());
        Range rangeCorrectRange = correctRange(this.mRequest.getRange(), fileStat.fileLength);
        createFile(this.mRequest.getTempFilePath(), rangeCorrectRange.getEnd() - rangeCorrectRange.getBegin());
        this.mCheckPoint.bucketName = this.mRequest.getBucketName();
        this.mCheckPoint.objectKey = this.mRequest.getObjectKey();
        CheckPoint checkPoint = this.mCheckPoint;
        checkPoint.fileStat = fileStat;
        checkPoint.parts = splitFile(rangeCorrectRange, fileStat.fileLength, this.mRequest.getPartSize());
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0052  */
    /* JADX WARN: Code duplicated, block: B:29:0x0057  */
    private void moveFile(File file, File file2) throws Throwable {
        FileOutputStream fileOutputStream;
        if (file.renameTo(file2)) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    copyFile(fileInputStream2, fileOutputStream);
                    if (file.delete()) {
                        fileInputStream2.close();
                        fileOutputStream.close();
                    } else {
                        throw new IOException("Failed to delete original file '" + file + "'");
                    }
                } catch (FileNotFoundException e11) {
                    e = e11;
                    fileInputStream = fileInputStream2;
                    try {
                        throw e;
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    throw th;
                }
            } catch (FileNotFoundException e12) {
                e = e12;
                fileOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
            }
        } catch (FileNotFoundException e13) {
            e = e13;
            fileOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
        }
    }

    private ArrayList<DownloadPart> splitFile(Range range, long j11, long j12) {
        long j13;
        int i11 = 0;
        if (j11 <= 0) {
            DownloadPart downloadPart = new DownloadPart();
            downloadPart.start = 0L;
            downloadPart.end = -1L;
            downloadPart.length = 0L;
            downloadPart.partNumber = 0;
            ArrayList<DownloadPart> arrayList = new ArrayList<>();
            arrayList.add(downloadPart);
            return arrayList;
        }
        long begin = range.getBegin();
        long end = range.getEnd() - range.getBegin();
        long j14 = end / j12;
        if (end % j12 > 0) {
            j14++;
        }
        ArrayList<DownloadPart> arrayList2 = new ArrayList<>();
        while (true) {
            long j15 = i11;
            if (j15 >= j14) {
                return arrayList2;
            }
            DownloadPart downloadPart2 = new DownloadPart();
            long j16 = j15 * j12;
            long j17 = begin + j16;
            downloadPart2.start = j17;
            int i12 = i11 + 1;
            long j18 = ((((long) i12) * j12) + begin) - 1;
            downloadPart2.end = j18;
            long j19 = j14;
            downloadPart2.length = (j18 - j17) + 1;
            long j20 = begin + end;
            if (j18 >= j20) {
                j13 = -1;
                downloadPart2.end = -1L;
                downloadPart2.length = j20 - j17;
            } else {
                j13 = -1;
            }
            downloadPart2.partNumber = i11;
            downloadPart2.fileStart = j16;
            arrayList2.add(downloadPart2);
            i11 = i12;
            j14 = j19;
        }
    }

    @Override // java.util.concurrent.Callable
    public Result call() throws Exception {
        try {
            checkInitData();
            Result result = (Result) doMultipartDownload();
            OSSCompletedCallback oSSCompletedCallback = this.mCompletedCallback;
            if (oSSCompletedCallback != null) {
                oSSCompletedCallback.onSuccess(this.mRequest, result);
            }
            return result;
        } catch (ServiceException e11) {
            OSSCompletedCallback oSSCompletedCallback2 = this.mCompletedCallback;
            if (oSSCompletedCallback2 != null) {
                oSSCompletedCallback2.onFailure(this.mRequest, null, e11);
            }
            throw e11;
        } catch (Exception e12) {
            ClientException clientException = e12 instanceof ClientException ? (ClientException) e12 : new ClientException(e12.toString(), e12);
            OSSCompletedCallback oSSCompletedCallback3 = this.mCompletedCallback;
            if (oSSCompletedCallback3 != null) {
                oSSCompletedCallback3.onFailure(this.mRequest, clientException, null);
            }
            throw clientException;
        }
    }

    protected void checkCancel() throws ClientException {
        if (this.mContext.getCancellationHandler().isCancelled()) {
            TaskCancelException taskCancelException = new TaskCancelException("Resumable download cancel");
            throw new ClientException(taskCancelException.getMessage(), taskCancelException, Boolean.TRUE);
        }
    }

    protected void checkException() throws ServiceException, ClientException, IOException {
        if (this.mDownloadException != null) {
            releasePool();
            Exception exc = this.mDownloadException;
            if (exc instanceof IOException) {
                throw ((IOException) exc);
            }
            if (exc instanceof ServiceException) {
                throw ((ServiceException) exc);
            }
            if (!(exc instanceof ClientException)) {
                throw new ClientException(this.mDownloadException.getMessage(), this.mDownloadException);
            }
            throw ((ClientException) exc);
        }
    }

    protected void checkInitData() throws Throwable {
        if (this.mRequest.getRange() != null && !this.mRequest.getRange().checkIsValid()) {
            throw new ClientException("Range is invalid");
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.mRequest.getBucketName());
        sb2.append(this.mRequest.getObjectKey());
        sb2.append(String.valueOf(this.mRequest.getPartSize()));
        sb2.append(this.mRequest.getCRC64() == OSSRequest.CRC64Config.YES ? "-crc64" : "");
        this.checkpointPath = this.mRequest.getCheckPointFilePath() + File.separator + BinaryUtil.calculateMd5Str(sb2.toString().getBytes());
        this.mCheckPoint = new CheckPoint();
        if (!this.mRequest.getEnableCheckPoint().booleanValue()) {
            initCheckPoint();
            return;
        }
        try {
            this.mCheckPoint.load(this.checkpointPath);
        } catch (Exception unused) {
            removeFile(this.checkpointPath);
            removeFile(this.mRequest.getTempFilePath());
        }
        if (this.mCheckPoint.isValid(this.mOperation)) {
            return;
        }
        removeFile(this.checkpointPath);
        removeFile(this.mRequest.getTempFilePath());
        initCheckPoint();
    }

    protected boolean checkWaitCondition(int i11) {
        return this.completedPartSize != ((long) i11);
    }

    protected ResumableDownloadResult doMultipartDownload() throws Throwable {
        checkCancel();
        ResumableDownloadResult resumableDownloadResult = new ResumableDownloadResult();
        final DownloadFileResult downloadFileResult = new DownloadFileResult();
        downloadFileResult.partResults = new ArrayList<>();
        for (final DownloadPart downloadPart : this.mCheckPoint.parts) {
            checkException();
            ThreadPoolExecutor threadPoolExecutor = this.mPoolExecutor;
            if (threadPoolExecutor == null || downloadPart.isCompleted) {
                DownloadPartResult downloadPartResult = new DownloadPartResult();
                downloadPartResult.partNumber = downloadPart.partNumber;
                downloadPartResult.requestId = this.mCheckPoint.fileStat.requestId;
                downloadPartResult.length = downloadPart.length;
                if (this.mRequest.getCRC64() == OSSRequest.CRC64Config.YES) {
                    downloadPartResult.clientCRC = Long.valueOf(downloadPart.crc);
                }
                downloadFileResult.partResults.add(downloadPartResult);
                this.downloadPartSize++;
                this.completedPartSize++;
            } else {
                threadPoolExecutor.execute(new Runnable() { // from class: com.alibaba.sdk.android.oss.internal.ResumableDownloadTask.2
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        ResumableDownloadTask.this.downloadPart(downloadFileResult, downloadPart);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("start: ");
                        sb2.append(downloadPart.start);
                        sb2.append(", end: ");
                        sb2.append(downloadPart.end);
                    }
                });
            }
        }
        if (checkWaitCondition(this.mCheckPoint.parts.size())) {
            synchronized (this.mLock) {
                this.mLock.wait();
            }
        }
        checkException();
        Collections.sort(downloadFileResult.partResults, new Comparator<DownloadPartResult>() { // from class: com.alibaba.sdk.android.oss.internal.ResumableDownloadTask.3
            @Override // java.util.Comparator
            public int compare(DownloadPartResult downloadPartResult2, DownloadPartResult downloadPartResult3) {
                return downloadPartResult2.partNumber - downloadPartResult3.partNumber;
            }
        });
        if (this.mRequest.getCRC64() == OSSRequest.CRC64Config.YES && this.mRequest.getRange() == null) {
            Long lCalcObjectCRCFromParts = calcObjectCRCFromParts(downloadFileResult.partResults);
            resumableDownloadResult.setClientCRC(lCalcObjectCRCFromParts);
            try {
                OSSUtils.checkChecksum(lCalcObjectCRCFromParts, this.mCheckPoint.fileStat.serverCRC, downloadFileResult.partResults.get(0).requestId);
            } catch (InconsistentException e11) {
                removeFile(this.checkpointPath);
                removeFile(this.mRequest.getTempFilePath());
                throw e11;
            }
        }
        removeFile(this.checkpointPath);
        moveFile(new File(this.mRequest.getTempFilePath()), new File(this.mRequest.getDownloadToFilePath()));
        resumableDownloadResult.setServerCRC(this.mCheckPoint.fileStat.serverCRC);
        resumableDownloadResult.setMetadata(downloadFileResult.metadata);
        resumableDownloadResult.setRequestId(downloadFileResult.partResults.get(0).requestId);
        resumableDownloadResult.setStatusCode(200);
        return resumableDownloadResult;
    }

    protected void notifyMultipartThread() {
        this.mLock.notify();
        this.mPartExceptionCount = 0L;
    }

    protected void processException(Exception exc) {
        synchronized (this.mLock) {
            try {
                this.mPartExceptionCount++;
                if (this.mDownloadException == null) {
                    this.mDownloadException = exc;
                    this.mLock.notify();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected void releasePool() {
        ThreadPoolExecutor threadPoolExecutor = this.mPoolExecutor;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.getQueue().clear();
            this.mPoolExecutor.shutdown();
        }
    }

    protected boolean removeFile(String str) {
        File file = new File(str);
        if (file.isFile() && file.exists()) {
            return file.delete();
        }
        return false;
    }
}
