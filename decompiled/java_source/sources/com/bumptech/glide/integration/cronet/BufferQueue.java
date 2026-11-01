package com.bumptech.glide.integration.cronet;

import android.support.v4.media.session.PlaybackStateCompat;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes2.dex */
final class BufferQueue {
    public static final String CONTENT_ENCODING = "content-encoding";
    public static final String CONTENT_LENGTH = "content-length";
    private final Queue<ByteBuffer> mBuffers;
    private final AtomicBoolean mIsCoalesced;

    public static final class Builder {
        private ArrayDeque<ByteBuffer> mBuffers;
        private RuntimeException whenClosed;

        private Builder() {
            this.mBuffers = new ArrayDeque<>();
        }

        private static long bufferSizeHeuristic(UrlResponseInfo urlResponseInfo) {
            Map<String, List<String>> allHeaders = urlResponseInfo.getAllHeaders();
            if (!allHeaders.containsKey(BufferQueue.CONTENT_LENGTH)) {
                return PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            }
            long j11 = Long.parseLong(allHeaders.get(BufferQueue.CONTENT_LENGTH).get(0));
            return (!allHeaders.containsKey(BufferQueue.CONTENT_ENCODING) || (allHeaders.get(BufferQueue.CONTENT_ENCODING).size() == 1 && "identity".equals(allHeaders.get(BufferQueue.CONTENT_ENCODING).get(0)))) ? j11 * 2 : j11 + 1;
        }

        public BufferQueue build() {
            this.whenClosed = new RuntimeException();
            this.mBuffers = null;
            return new BufferQueue(this.mBuffers);
        }

        public ByteBuffer getFirstBuffer(UrlResponseInfo urlResponseInfo) {
            return ByteBuffer.allocateDirect((int) Math.min(bufferSizeHeuristic(urlResponseInfo), PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED));
        }

        public ByteBuffer getNextBuffer(ByteBuffer byteBuffer) {
            ArrayDeque<ByteBuffer> arrayDeque = this.mBuffers;
            if (arrayDeque == null) {
                throw new RuntimeException(this.whenClosed);
            }
            if (byteBuffer != arrayDeque.peekLast()) {
                this.mBuffers.addLast(byteBuffer);
            }
            return byteBuffer.hasRemaining() ? byteBuffer : ByteBuffer.allocateDirect(8096);
        }
    }

    private BufferQueue(Queue<ByteBuffer> queue) {
        this.mIsCoalesced = new AtomicBoolean(false);
        this.mBuffers = queue;
        Iterator<ByteBuffer> it = queue.iterator();
        while (it.hasNext()) {
            it.next().flip();
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    private void markCoalesced() {
        if (!this.mIsCoalesced.compareAndSet(false, true)) {
            throw new IllegalStateException("This BufferQueue has already been consumed");
        }
    }

    public ByteBuffer coalesceToBuffer() {
        markCoalesced();
        int iRemaining = 0;
        if (this.mBuffers.size() == 0) {
            return ByteBuffer.allocateDirect(0);
        }
        if (this.mBuffers.size() == 1) {
            return this.mBuffers.remove();
        }
        Iterator<ByteBuffer> it = this.mBuffers.iterator();
        while (it.hasNext()) {
            iRemaining += it.next().remaining();
        }
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(iRemaining);
        while (!this.mBuffers.isEmpty()) {
            byteBufferAllocateDirect.put(this.mBuffers.remove());
        }
        byteBufferAllocateDirect.flip();
        return byteBufferAllocateDirect;
    }
}
