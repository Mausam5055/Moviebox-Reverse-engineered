.class public interface abstract La4/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/e$a;,
        La4/e$b;,
        La4/e$c;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getDatabaseName()Ljava/lang/String;
.end method

.method public abstract getReadableDatabase()La4/d;
.end method

.method public abstract getWritableDatabase()La4/d;
.end method

.method public abstract setWriteAheadLoggingEnabled(Z)V
.end method
