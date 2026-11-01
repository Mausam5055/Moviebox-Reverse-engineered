package com.cloud.tmc.kernel.api.bytedata;

/* JADX INFO: loaded from: classes3.dex */
class ByteArrayPools {

    static class ByteArray127Pool extends ByteArrayPool {
        ByteArray127Pool() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.cloud.tmc.kernel.api.bytedata.Pool
        public byte[] newObject() {
            return new byte[127];
        }
    }

    static class ByteArray2Pool extends ByteArrayPool {
        ByteArray2Pool() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.cloud.tmc.kernel.api.bytedata.Pool
        public byte[] newObject() {
            return new byte[2];
        }
    }

    static class ByteArray4Pool extends ByteArrayPool {
        ByteArray4Pool() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.cloud.tmc.kernel.api.bytedata.Pool
        public byte[] newObject() {
            return new byte[4];
        }
    }

    static class ByteArray8Pool extends ByteArrayPool {
        ByteArray8Pool() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.cloud.tmc.kernel.api.bytedata.Pool
        public byte[] newObject() {
            return new byte[8];
        }
    }

    static abstract class ByteArrayPool extends Pool<byte[]> {
        private ByteArrayPool() {
            super(1, 8);
        }

        @Override // com.cloud.tmc.kernel.api.bytedata.Pool
        public synchronized void free(byte[] bArr) {
            super.free(bArr);
        }

        @Override // com.cloud.tmc.kernel.api.bytedata.Pool
        public synchronized byte[] obtain() {
            return (byte[]) super.obtain();
        }
    }

    ByteArrayPools() {
    }
}
