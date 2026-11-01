.class public abstract Landroidx/loader/content/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/a$a;,
        Landroidx/loader/content/a$b;
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroidx/loader/content/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/a$b;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroidx/loader/content/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/a$a;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/content/a;->mStarted:Z

    iput-boolean v0, p0, Landroidx/loader/content/a;->mAbandoned:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/loader/content/a;->mReset:Z

    iput-boolean v0, p0, Landroidx/loader/content/a;->mContentChanged:Z

    iput-boolean v0, p0, Landroidx/loader/content/a;->mProcessingChange:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/loader/content/a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/content/a;->mAbandoned:Z

    invoke-virtual {p0}, Landroidx/loader/content/a;->onAbandon()V

    return-void
.end method

.method public cancelLoad()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/loader/content/a;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public commitContentChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/content/a;->mProcessingChange:Z

    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1, v0}, Landroidx/core/util/b;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deliverCancellation()V
    .locals 0

    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/a;->mListener:Landroidx/loader/content/a$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroidx/loader/content/a$b;->a(Landroidx/loader/content/a;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/loader/content/a;->mId:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/a;->mListener:Landroidx/loader/content/a$b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean p2, p0, Landroidx/loader/content/a;->mStarted:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroidx/loader/content/a;->mContentChanged:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroidx/loader/content/a;->mProcessingChange:Z

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mStarted="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/loader/content/a;->mStarted:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mContentChanged="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/loader/content/a;->mContentChanged:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mProcessingChange="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/loader/content/a;->mProcessingChange:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-boolean p2, p0, Landroidx/loader/content/a;->mAbandoned:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Landroidx/loader/content/a;->mReset:Z

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAbandoned="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/loader/content/a;->mAbandoned:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/loader/content/a;->mReset:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    return-void
.end method

.method public forceLoad()V
    .locals 0

    invoke-virtual {p0}, Landroidx/loader/content/a;->onForceLoad()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroidx/loader/content/a;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/loader/content/a;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/loader/content/a;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/loader/content/a;->mStarted:Z

    return v0
.end method

.method protected onAbandon()V
    .locals 0

    return-void
.end method

.method protected abstract onCancelLoad()Z
.end method

.method public onContentChanged()V
    .locals 1

    iget-boolean v0, p0, Landroidx/loader/content/a;->mStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/loader/content/a;->forceLoad()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/content/a;->mContentChanged:Z

    :goto_0
    return-void
.end method

.method protected onForceLoad()V
    .locals 0

    return-void
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method protected abstract onStartLoading()V
.end method

.method protected onStopLoading()V
    .locals 0

    return-void
.end method

.method public registerListener(ILandroidx/loader/content/a$b;)V
    .locals 1
    .param p2    # Landroidx/loader/content/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/loader/content/a$b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/a;->mListener:Landroidx/loader/content/a$b;

    if-nez v0, :cond_0

    iput-object p2, p0, Landroidx/loader/content/a;->mListener:Landroidx/loader/content/a$b;

    iput p1, p0, Landroidx/loader/content/a;->mId:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerOnLoadCanceledListener(Landroidx/loader/content/a$a;)V
    .locals 0
    .param p1    # Landroidx/loader/content/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/a$a;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Landroidx/loader/content/a;->onReset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/content/a;->mReset:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/content/a;->mStarted:Z

    iput-boolean v0, p0, Landroidx/loader/content/a;->mAbandoned:Z

    iput-boolean v0, p0, Landroidx/loader/content/a;->mContentChanged:Z

    iput-boolean v0, p0, Landroidx/loader/content/a;->mProcessingChange:Z

    return-void
.end method

.method public rollbackContentChanged()V
    .locals 1

    iget-boolean v0, p0, Landroidx/loader/content/a;->mProcessingChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/loader/content/a;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public final startLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/content/a;->mStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/content/a;->mReset:Z

    iput-boolean v0, p0, Landroidx/loader/content/a;->mAbandoned:Z

    invoke-virtual {p0}, Landroidx/loader/content/a;->onStartLoading()V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/content/a;->mStarted:Z

    invoke-virtual {p0}, Landroidx/loader/content/a;->onStopLoading()V

    return-void
.end method

.method public takeContentChanged()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/loader/content/a;->mContentChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/loader/content/a;->mContentChanged:Z

    iget-boolean v1, p0, Landroidx/loader/content/a;->mProcessingChange:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroidx/loader/content/a;->mProcessingChange:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroidx/core/util/b;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/loader/content/a;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Landroidx/loader/content/a$b;)V
    .locals 1
    .param p1    # Landroidx/loader/content/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/a$b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/a;->mListener:Landroidx/loader/content/a$b;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/loader/content/a;->mListener:Landroidx/loader/content/a$b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterOnLoadCanceledListener(Landroidx/loader/content/a$a;)V
    .locals 1
    .param p1    # Landroidx/loader/content/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/a$a;",
            ")V"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
