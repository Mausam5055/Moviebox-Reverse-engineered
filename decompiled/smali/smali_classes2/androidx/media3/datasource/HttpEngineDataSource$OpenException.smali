.class public final Landroidx/media3/datasource/HttpEngineDataSource$OpenException;
.super Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;


# instance fields
.field public final httpEngineConnectionStatus:I


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lw1/h;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    iput p4, p0, Landroidx/media3/datasource/HttpEngineDataSource$OpenException;->httpEngineConnectionStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lw1/h;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lw1/h;II)V

    iput p4, p0, Landroidx/media3/datasource/HttpEngineDataSource$OpenException;->httpEngineConnectionStatus:I

    return-void
.end method

.method public constructor <init>(Lw1/h;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Lw1/h;II)V

    iput p3, p0, Landroidx/media3/datasource/HttpEngineDataSource$OpenException;->httpEngineConnectionStatus:I

    return-void
.end method
