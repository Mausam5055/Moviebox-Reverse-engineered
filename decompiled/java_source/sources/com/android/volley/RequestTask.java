package com.android.volley;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RequestTask<T> implements Runnable {
    final Request mRequest;

    public RequestTask(Request request) {
        this.mRequest = request;
    }

    public int compareTo(RequestTask<?> requestTask) {
        return this.mRequest.compareTo(requestTask.mRequest);
    }
}
