.class public final Landroidx/media3/exoplayer/hls/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/hls/f;


# instance fields
.field private final a:Landroidx/media3/datasource/a$a;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/c;->a:Landroidx/media3/datasource/a$a;

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/media3/datasource/a;
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/c;->a:Landroidx/media3/datasource/a$a;

    invoke-interface {p1}, Landroidx/media3/datasource/a$a;->createDataSource()Landroidx/media3/datasource/a;

    move-result-object p1

    return-object p1
.end method
