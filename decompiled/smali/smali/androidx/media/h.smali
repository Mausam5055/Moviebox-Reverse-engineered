.class final Landroidx/media/h;
.super Landroidx/media/i;


# instance fields
.field final d:Landroid/media/session/MediaSessionManager$RemoteUserInfo;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 3

    invoke-static {p1}, Landroidx/media/e;->a(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroidx/media/f;->a(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I

    move-result v1

    invoke-static {p1}, Landroidx/media/g;->a(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/media/i;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Landroidx/media/h;->d:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media/i;-><init>(Ljava/lang/String;II)V

    invoke-static {p1, p2, p3}, Landroidx/media/d;->a(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media/h;->d:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-void
.end method

.method static a(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroidx/media/e;->a(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
