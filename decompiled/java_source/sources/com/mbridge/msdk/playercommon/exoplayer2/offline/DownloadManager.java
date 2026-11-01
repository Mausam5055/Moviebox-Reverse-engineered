package com.mbridge.msdk.playercommon.exoplayer2.offline;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes5.dex */
public final class DownloadManager {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_MAX_SIMULTANEOUS_DOWNLOADS = 1;
    public static final int DEFAULT_MIN_RETRY_COUNT = 5;
    private static final String TAG = "DownloadManager";
    private final ActionFile actionFile;
    private final ArrayList<Task> activeDownloadTasks;
    private final DownloadAction.Deserializer[] deserializers;
    private final DownloaderConstructorHelper downloaderConstructorHelper;
    private boolean downloadsStopped;
    private final Handler fileIOHandler;
    private final HandlerThread fileIOThread;
    private final Handler handler;
    private boolean initialized;
    private final CopyOnWriteArraySet<Listener> listeners;
    private final int maxActiveDownloadTasks;
    private final int minRetryCount;
    private int nextTaskId;
    private boolean released;
    private final ArrayList<Task> tasks;

    public interface Listener {
        void onIdle(DownloadManager downloadManager);

        void onInitialized(DownloadManager downloadManager);

        void onTaskStateChanged(DownloadManager downloadManager, TaskState taskState);
    }

    private static final class Task implements Runnable {
        public static final int STATE_QUEUED_CANCELING = 5;
        public static final int STATE_STARTED_CANCELING = 6;
        public static final int STATE_STARTED_STOPPING = 7;
        private final DownloadAction action;
        private volatile int currentState;
        private final DownloadManager downloadManager;
        private volatile Downloader downloader;
        private Throwable error;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private final int f36784id;
        private final int minRetryCount;
        private Thread thread;

        @Retention(RetentionPolicy.SOURCE)
        public @interface InternalState {
        }

        private Task(int i11, DownloadManager downloadManager, DownloadAction downloadAction, int i12) {
            this.f36784id = i11;
            this.downloadManager = downloadManager;
            this.action = downloadAction;
            this.currentState = 0;
            this.minRetryCount = i12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean canStart() {
            return this.currentState == 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cancel() {
            if (changeStateAndNotify(0, 5)) {
                this.downloadManager.handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadManager.Task.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Task.this.changeStateAndNotify(5, 3);
                    }
                });
            } else if (changeStateAndNotify(1, 6)) {
                cancelDownload();
            }
        }

        private void cancelDownload() {
            if (this.downloader != null) {
                this.downloader.cancel();
            }
            this.thread.interrupt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean changeStateAndNotify(int i11, int i12) {
            return changeStateAndNotify(i11, i12, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean changeStateAndNotify(int i11, int i12, Throwable th2) {
            if (this.currentState != i11) {
                return false;
            }
            this.currentState = i12;
            this.error = th2;
            if (this.currentState != getExternalState()) {
                return true;
            }
            this.downloadManager.onTaskStateChange(this);
            return true;
        }

        private int getExternalState() {
            int i11 = this.currentState;
            if (i11 == 5) {
                return 0;
            }
            if (i11 == 6 || i11 == 7) {
                return 1;
            }
            return this.currentState;
        }

        private int getRetryDelayMillis(int i11) {
            return Math.min((i11 - 1) * 1000, 5000);
        }

        private String getStateString() {
            int i11 = this.currentState;
            if (i11 == 5 || i11 == 6) {
                return "CANCELING";
            }
            return i11 != 7 ? TaskState.getStateString(this.currentState) : "STOPPING";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void start() {
            if (changeStateAndNotify(0, 1)) {
                Thread thread = new Thread(this);
                this.thread = thread;
                thread.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void stop() {
            if (changeStateAndNotify(1, 7)) {
                DownloadManager.logd("Stopping", this);
                this.thread.interrupt();
            }
        }

        private static String toString(byte[] bArr) {
            if (bArr.length > 100) {
                return "<data is too long>";
            }
            return '\'' + Util.fromUtf8Bytes(bArr) + '\'';
        }

        public float getDownloadPercentage() {
            if (this.downloader != null) {
                return this.downloader.getDownloadPercentage();
            }
            return -1.0f;
        }

        public TaskState getDownloadState() {
            return new TaskState(this.f36784id, this.action, getExternalState(), getDownloadPercentage(), getDownloadedBytes(), this.error);
        }

        public long getDownloadedBytes() {
            if (this.downloader != null) {
                return this.downloader.getDownloadedBytes();
            }
            return 0L;
        }

        public boolean isActive() {
            return this.currentState == 5 || this.currentState == 1 || this.currentState == 7 || this.currentState == 6;
        }

        public boolean isFinished() {
            return this.currentState == 4 || this.currentState == 2 || this.currentState == 3;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadManager.logd("Task is started", this);
            try {
                this.downloader = this.action.createDownloader(this.downloadManager.downloaderConstructorHelper);
                if (this.action.isRemoveAction) {
                    this.downloader.remove();
                } else {
                    long j11 = -1;
                    int i11 = 0;
                    while (!Thread.interrupted()) {
                        try {
                            this.downloader.download();
                            break;
                        } catch (IOException e11) {
                            long downloadedBytes = this.downloader.getDownloadedBytes();
                            if (downloadedBytes != j11) {
                                DownloadManager.logd("Reset error count. downloadedBytes = " + downloadedBytes, this);
                                i11 = 0;
                                j11 = downloadedBytes;
                            }
                            if (this.currentState != 1 || (i11 = i11 + 1) > this.minRetryCount) {
                                throw e11;
                            }
                            DownloadManager.logd("Download error. Retry " + i11, this);
                            Thread.sleep((long) getRetryDelayMillis(i11));
                        }
                    }
                }
                th = null;
            } catch (Throwable th2) {
                th = th2;
            }
            this.downloadManager.handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadManager.Task.2
                @Override // java.lang.Runnable
                public void run() {
                    Task task = Task.this;
                    Throwable th3 = th;
                    if (!task.changeStateAndNotify(1, th3 != null ? 4 : 2, th3) && !Task.this.changeStateAndNotify(6, 3) && !Task.this.changeStateAndNotify(7, 0)) {
                        throw new IllegalStateException();
                    }
                }
            });
        }

        public String toString() {
            return super.toString();
        }
    }

    public static final class TaskState {
        public static final int STATE_CANCELED = 3;
        public static final int STATE_COMPLETED = 2;
        public static final int STATE_FAILED = 4;
        public static final int STATE_QUEUED = 0;
        public static final int STATE_STARTED = 1;
        public final DownloadAction action;
        public final float downloadPercentage;
        public final long downloadedBytes;
        public final Throwable error;
        public final int state;
        public final int taskId;

        @Retention(RetentionPolicy.SOURCE)
        public @interface State {
        }

        private TaskState(int i11, DownloadAction downloadAction, int i12, float f11, long j11, Throwable th2) {
            this.taskId = i11;
            this.action = downloadAction;
            this.state = i12;
            this.downloadPercentage = f11;
            this.downloadedBytes = j11;
            this.error = th2;
        }

        public static String getStateString(int i11) {
            if (i11 == 0) {
                return "QUEUED";
            }
            if (i11 == 1) {
                return "STARTED";
            }
            if (i11 == 2) {
                return "COMPLETED";
            }
            if (i11 == 3) {
                return "CANCELED";
            }
            if (i11 == 4) {
                return "FAILED";
            }
            throw new IllegalStateException();
        }
    }

    public DownloadManager(DownloaderConstructorHelper downloaderConstructorHelper, int i11, int i12, File file, DownloadAction.Deserializer... deserializerArr) {
        Assertions.checkArgument(deserializerArr.length > 0, "At least one Deserializer is required.");
        this.downloaderConstructorHelper = downloaderConstructorHelper;
        this.maxActiveDownloadTasks = i11;
        this.minRetryCount = i12;
        this.actionFile = new ActionFile(file);
        this.deserializers = deserializerArr;
        this.downloadsStopped = true;
        this.tasks = new ArrayList<>();
        this.activeDownloadTasks = new ArrayList<>();
        Looper looperMyLooper = Looper.myLooper();
        this.handler = new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper);
        HandlerThread handlerThread = new HandlerThread("DownloadManager file i/o");
        this.fileIOThread = handlerThread;
        handlerThread.start();
        this.fileIOHandler = new Handler(handlerThread.getLooper());
        this.listeners = new CopyOnWriteArraySet<>();
        loadActions();
        logd("Created");
    }

    public DownloadManager(DownloaderConstructorHelper downloaderConstructorHelper, File file, DownloadAction.Deserializer... deserializerArr) {
        this(downloaderConstructorHelper, 1, 5, file, deserializerArr);
    }

    public DownloadManager(Cache cache, DataSource.Factory factory, File file, DownloadAction.Deserializer... deserializerArr) {
        this(new DownloaderConstructorHelper(cache, factory), file, deserializerArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task addTaskForAction(DownloadAction downloadAction) {
        int i11 = this.nextTaskId;
        this.nextTaskId = i11 + 1;
        Task task = new Task(i11, this, downloadAction, this.minRetryCount);
        this.tasks.add(task);
        logd("Task is added", task);
        return task;
    }

    private void loadActions() {
        this.fileIOHandler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadManager.2
            @Override // java.lang.Runnable
            public void run() {
                final DownloadAction[] downloadActionArrLoad;
                try {
                    downloadActionArrLoad = DownloadManager.this.actionFile.load(DownloadManager.this.deserializers);
                    DownloadManager.logd("Action file is loaded.");
                } catch (Throwable th2) {
                    Log.e(DownloadManager.TAG, "Action file loading failed.", th2);
                    downloadActionArrLoad = new DownloadAction[0];
                }
                DownloadManager.this.handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadManager.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (DownloadManager.this.released) {
                            return;
                        }
                        ArrayList arrayList = new ArrayList(DownloadManager.this.tasks);
                        DownloadManager.this.tasks.clear();
                        for (DownloadAction downloadAction : downloadActionArrLoad) {
                            DownloadManager.this.addTaskForAction(downloadAction);
                        }
                        DownloadManager.logd("Tasks are created.");
                        DownloadManager.this.initialized = true;
                        Iterator it = DownloadManager.this.listeners.iterator();
                        while (it.hasNext()) {
                            ((Listener) it.next()).onInitialized(DownloadManager.this);
                        }
                        if (!arrayList.isEmpty()) {
                            DownloadManager.this.tasks.addAll(arrayList);
                            DownloadManager.this.saveActions();
                        }
                        DownloadManager.this.maybeStartTasks();
                        for (int i11 = 0; i11 < DownloadManager.this.tasks.size(); i11++) {
                            Task task = (Task) DownloadManager.this.tasks.get(i11);
                            if (task.currentState == 0) {
                                DownloadManager.this.notifyListenersTaskStateChange(task);
                            }
                        }
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logd(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logd(String str, Task task) {
        logd(str + ": " + task);
    }

    private void maybeNotifyListenersIdle() {
        if (isIdle()) {
            logd("Notify idle state");
            Iterator<Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onIdle(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeStartTasks() {
        DownloadAction downloadAction;
        boolean z10;
        if (!this.initialized || this.released) {
            return;
        }
        boolean z11 = this.downloadsStopped || this.activeDownloadTasks.size() == this.maxActiveDownloadTasks;
        for (int i11 = 0; i11 < this.tasks.size(); i11++) {
            Task task = this.tasks.get(i11);
            if (task.canStart() && ((z10 = (downloadAction = task.action).isRemoveAction) || !z11)) {
                boolean z12 = true;
                for (int i12 = 0; i12 < i11; i12++) {
                    Task task2 = this.tasks.get(i12);
                    if (task2.action.isSameMedia(downloadAction)) {
                        if (!z10) {
                            if (task2.action.isRemoveAction) {
                                z11 = true;
                                z12 = false;
                                break;
                            }
                        } else {
                            logd(task + " clashes with " + task2);
                            task2.cancel();
                            z12 = false;
                        }
                    }
                }
                if (z12) {
                    task.start();
                    if (!z10) {
                        this.activeDownloadTasks.add(task);
                        z11 = this.activeDownloadTasks.size() == this.maxActiveDownloadTasks;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyListenersTaskStateChange(Task task) {
        logd("Task state is changed", task);
        TaskState downloadState = task.getDownloadState();
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onTaskStateChanged(this, downloadState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTaskStateChange(Task task) {
        if (this.released) {
            return;
        }
        boolean zIsActive = task.isActive();
        if (!zIsActive) {
            this.activeDownloadTasks.remove(task);
        }
        notifyListenersTaskStateChange(task);
        if (task.isFinished()) {
            this.tasks.remove(task);
            saveActions();
        }
        if (zIsActive) {
            return;
        }
        maybeStartTasks();
        maybeNotifyListenersIdle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveActions() {
        if (this.released) {
            return;
        }
        final DownloadAction[] downloadActionArr = new DownloadAction[this.tasks.size()];
        for (int i11 = 0; i11 < this.tasks.size(); i11++) {
            downloadActionArr[i11] = this.tasks.get(i11).action;
        }
        this.fileIOHandler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadManager.3
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                try {
                    DownloadManager.this.actionFile.store(downloadActionArr);
                    DownloadManager.logd("Actions persisted.");
                } catch (IOException e11) {
                    Log.e(DownloadManager.TAG, "Persisting actions failed.", e11);
                }
            }
        });
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public TaskState[] getAllTaskStates() {
        Assertions.checkState(!this.released);
        int size = this.tasks.size();
        TaskState[] taskStateArr = new TaskState[size];
        for (int i11 = 0; i11 < size; i11++) {
            taskStateArr[i11] = this.tasks.get(i11).getDownloadState();
        }
        return taskStateArr;
    }

    public int getDownloadCount() {
        int i11 = 0;
        for (int i12 = 0; i12 < this.tasks.size(); i12++) {
            if (!this.tasks.get(i12).action.isRemoveAction) {
                i11++;
            }
        }
        return i11;
    }

    public int getTaskCount() {
        Assertions.checkState(!this.released);
        return this.tasks.size();
    }

    @Nullable
    public TaskState getTaskState(int i11) {
        Assertions.checkState(!this.released);
        for (int i12 = 0; i12 < this.tasks.size(); i12++) {
            Task task = this.tasks.get(i12);
            if (task.f36784id == i11) {
                return task.getDownloadState();
            }
        }
        return null;
    }

    public int handleAction(DownloadAction downloadAction) {
        Assertions.checkState(!this.released);
        Task taskAddTaskForAction = addTaskForAction(downloadAction);
        if (this.initialized) {
            saveActions();
            maybeStartTasks();
            if (taskAddTaskForAction.currentState == 0) {
                notifyListenersTaskStateChange(taskAddTaskForAction);
            }
        }
        return taskAddTaskForAction.f36784id;
    }

    public int handleAction(byte[] bArr) throws IOException {
        Assertions.checkState(!this.released);
        return handleAction(DownloadAction.deserializeFromStream(this.deserializers, new ByteArrayInputStream(bArr)));
    }

    public boolean isIdle() {
        Assertions.checkState(!this.released);
        if (!this.initialized) {
            return false;
        }
        for (int i11 = 0; i11 < this.tasks.size(); i11++) {
            if (this.tasks.get(i11).isActive()) {
                return false;
            }
        }
        return true;
    }

    public boolean isInitialized() {
        Assertions.checkState(!this.released);
        return this.initialized;
    }

    public void release() {
        if (this.released) {
            return;
        }
        this.released = true;
        for (int i11 = 0; i11 < this.tasks.size(); i11++) {
            this.tasks.get(i11).stop();
        }
        final ConditionVariable conditionVariable = new ConditionVariable();
        this.fileIOHandler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadManager.1
            @Override // java.lang.Runnable
            public void run() {
                conditionVariable.open();
            }
        });
        conditionVariable.block();
        this.fileIOThread.quit();
        logd("Released");
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    public void startDownloads() {
        Assertions.checkState(!this.released);
        if (this.downloadsStopped) {
            this.downloadsStopped = false;
            maybeStartTasks();
            logd("Downloads are started");
        }
    }

    public void stopDownloads() {
        Assertions.checkState(!this.released);
        if (this.downloadsStopped) {
            return;
        }
        this.downloadsStopped = true;
        for (int i11 = 0; i11 < this.activeDownloadTasks.size(); i11++) {
            this.activeDownloadTasks.get(i11).stop();
        }
        logd("Downloads are stopping");
    }
}
