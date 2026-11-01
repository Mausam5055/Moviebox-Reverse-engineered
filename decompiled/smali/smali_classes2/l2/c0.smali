.class public abstract Ll2/c0;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/s;


# instance fields
.field private final a:Ll2/s;


# direct methods
.method public constructor <init>(Ll2/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/c0;->a:Ll2/s;

    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0, p1}, Ll2/s;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 1

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0, p1, p2}, Ll2/s;->advancePeekPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public b([BII)I
    .locals 1

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0, p1, p2, p3}, Ll2/s;->b([BII)I

    move-result p1

    return p1
.end method

.method public getLength()J
    .locals 2

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0}, Ll2/s;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 2

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0}, Ll2/s;->getPeekPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0}, Ll2/s;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public peekFully([BII)V
    .locals 1

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0, p1, p2, p3}, Ll2/s;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 1

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0, p1, p2, p3, p4}, Ll2/s;->peekFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0, p1, p2, p3}, Ll2/s;->read([BII)I

    move-result p1

    return p1
.end method

.method public readFully([BII)V
    .locals 1

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0, p1, p2, p3}, Ll2/s;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 1

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0, p1, p2, p3, p4}, Ll2/s;->readFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public resetPeekPosition()V
    .locals 1

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0}, Ll2/s;->resetPeekPosition()V

    return-void
.end method

.method public skip(I)I
    .locals 1

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0, p1}, Ll2/s;->skip(I)I

    move-result p1

    return p1
.end method

.method public skipFully(I)V
    .locals 1

    iget-object v0, p0, Ll2/c0;->a:Ll2/s;

    invoke-interface {v0, p1}, Ll2/s;->skipFully(I)V

    return-void
.end method
