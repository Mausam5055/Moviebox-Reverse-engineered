.class final Landroidx/media3/exoplayer/offline/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/offline/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/a$b;->a:Landroid/database/Cursor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Landroidx/media3/exoplayer/offline/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/a$b;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public N()Landroidx/media3/exoplayer/offline/c;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/a$b;->a:Landroid/database/Cursor;

    invoke-static {v0}, Landroidx/media3/exoplayer/offline/a;->i(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/c;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/a$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/a$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public synthetic moveToNext()Z
    .locals 1

    invoke-static {p0}, Landroidx/media3/exoplayer/offline/d;->a(Landroidx/media3/exoplayer/offline/e;)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/a$b;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method
