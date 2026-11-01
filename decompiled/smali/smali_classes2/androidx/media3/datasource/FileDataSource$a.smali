.class public final Landroidx/media3/datasource/FileDataSource$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lw1/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Landroidx/media3/datasource/FileDataSource;
    .locals 2

    new-instance v0, Landroidx/media3/datasource/FileDataSource;

    invoke-direct {v0}, Landroidx/media3/datasource/FileDataSource;-><init>()V

    iget-object v1, p0, Landroidx/media3/datasource/FileDataSource$a;->a:Lw1/n;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lw1/a;->c(Lw1/n;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/a;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/datasource/FileDataSource$a;->b()Landroidx/media3/datasource/FileDataSource;

    move-result-object v0

    return-object v0
.end method
