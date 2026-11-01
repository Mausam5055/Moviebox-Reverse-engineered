.class public Landroidx/media/app/c;
.super Landroidx/core/app/NotificationCompat$p;


# instance fields
.field e:[I

.field f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field g:Ljava/lang/CharSequence;

.field h:I

.field i:Landroid/app/PendingIntent;

.field j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$p;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media/app/c;->e:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media/app/c;->j:Z

    return-void
.end method


# virtual methods
.method public b(Landroidx/core/app/o;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Landroidx/core/app/o;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {}, Landroidx/media/app/a;->a()Landroid/app/Notification$MediaStyle;

    move-result-object v0

    iget-object v1, p0, Landroidx/media/app/c;->g:Ljava/lang/CharSequence;

    iget v2, p0, Landroidx/media/app/c;->h:I

    iget-object v3, p0, Landroidx/media/app/c;->i:Landroid/app/PendingIntent;

    iget-boolean v4, p0, Landroidx/media/app/c;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/media/app/b;->a(Landroid/app/Notification$MediaStyle;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;Ljava/lang/Boolean;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    iget-object v1, p0, Landroidx/media/app/c;->e:[I

    iget-object v2, p0, Landroidx/media/app/c;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, v1, v2}, Landroidx/media/app/a;->b(Landroid/app/Notification$MediaStyle;[ILandroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media/app/a;->d(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/core/app/o;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {}, Landroidx/media/app/a;->a()Landroid/app/Notification$MediaStyle;

    move-result-object v0

    iget-object v1, p0, Landroidx/media/app/c;->e:[I

    iget-object v2, p0, Landroidx/media/app/c;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, v1, v2}, Landroidx/media/app/a;->b(Landroid/app/Notification$MediaStyle;[ILandroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media/app/a;->d(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    :goto_0
    return-void
.end method

.method public m(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public q(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/c;
    .locals 0

    iput-object p1, p0, Landroidx/media/app/c;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object p0
.end method

.method public varargs r([I)Landroidx/media/app/c;
    .locals 0

    iput-object p1, p0, Landroidx/media/app/c;->e:[I

    return-object p0
.end method
