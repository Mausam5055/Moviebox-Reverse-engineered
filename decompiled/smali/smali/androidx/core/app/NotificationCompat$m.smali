.class public Landroidx/core/app/NotificationCompat$m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$m$a;
    }
.end annotation


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Ljava/lang/String;

.field E:Landroid/os/Bundle;

.field F:I

.field G:I

.field H:Landroid/app/Notification;

.field I:Landroid/widget/RemoteViews;

.field J:Landroid/widget/RemoteViews;

.field K:Landroid/widget/RemoteViews;

.field L:Ljava/lang/String;

.field M:I

.field N:Ljava/lang/String;

.field O:Landroidx/core/content/c;

.field P:J

.field Q:I

.field R:I

.field S:Z

.field T:Landroidx/core/app/NotificationCompat$l;

.field U:Landroid/app/Notification;

.field V:Z

.field W:Ljava/lang/Object;

.field public X:Ljava/util/ArrayList;

.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/util/ArrayList;

.field d:Ljava/util/ArrayList;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Landroid/app/PendingIntent;

.field h:Landroid/app/PendingIntent;

.field i:Landroid/widget/RemoteViews;

.field j:Landroidx/core/graphics/drawable/IconCompat;

.field k:Ljava/lang/CharSequence;

.field l:I

.field m:I

.field n:Z

.field o:Z

.field p:Z

.field q:Landroidx/core/app/NotificationCompat$p;

.field r:Ljava/lang/CharSequence;

.field s:Ljava/lang/CharSequence;

.field t:[Ljava/lang/CharSequence;

.field u:I

.field v:I

.field w:Z

.field x:Ljava/lang/String;

.field y:Z

.field z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$m;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$m;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$m;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$m;->n:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$m;->A:Z

    iput v1, p0, Landroidx/core/app/NotificationCompat$m;->F:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$m;->G:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$m;->M:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$m;->Q:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$m;->R:I

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/app/NotificationCompat$m;->L:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    iget-object p1, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$m;->m:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$m;->X:Ljava/util/ArrayList;

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$m;->S:Z

    return-void
.end method

.method protected static k(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private v(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method


# virtual methods
.method public A(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat;->reduceLargeIconSize(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->g(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$m;->j:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public B(III)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget p2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, -0x2

    or-int/2addr p1, p2

    iput p1, v0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public C(Z)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$m;->A:Z

    return-object p0
.end method

.method public D(I)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput p1, p0, Landroidx/core/app/NotificationCompat$m;->l:I

    return-object p0
.end method

.method public E(Z)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$m;->v(IZ)V

    return-object p0
.end method

.method public F(Z)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$m;->v(IZ)V

    return-object p0
.end method

.method public G(I)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput p1, p0, Landroidx/core/app/NotificationCompat$m;->m:I

    return-object p0
.end method

.method public H(IIZ)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput p1, p0, Landroidx/core/app/NotificationCompat$m;->u:I

    iput p2, p0, Landroidx/core/app/NotificationCompat$m;->v:I

    iput-boolean p3, p0, Landroidx/core/app/NotificationCompat$m;->w:Z

    return-object p0
.end method

.method public I(Z)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$m;->n:Z

    return-object p0
.end method

.method public J(I)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public K(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 p1, -0x1

    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Landroidx/core/app/NotificationCompat$m$a;->b()Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat$m$a;->c(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat$m$a;->d(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$m$a;->a(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public L(Landroidx/core/app/NotificationCompat$p;)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->q:Landroidx/core/app/NotificationCompat$p;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$m;->q:Landroidx/core/app/NotificationCompat$p;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$p;->p(Landroidx/core/app/NotificationCompat$m;)V

    :cond_0
    return-object p0
.end method

.method public M(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$m;->k(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public N([J)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public O(I)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput p1, p0, Landroidx/core/app/NotificationCompat$m;->G:I

    return-object p0
.end method

.method public P(J)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;
    .locals 2

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->b:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/NotificationCompat$b;

    invoke-direct {v1, p1, p2, p3}, Landroidx/core/app/NotificationCompat$b;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Landroidx/core/app/NotificationCompat$b;)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public c()Landroid/app/Notification;
    .locals 1

    new-instance v0, Landroidx/core/app/r;

    invoke-direct {v0, p0}, Landroidx/core/app/r;-><init>(Landroidx/core/app/NotificationCompat$m;)V

    invoke-virtual {v0}, Landroidx/core/app/r;->c()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->J:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Landroidx/core/app/NotificationCompat$m;->F:I

    return v0
.end method

.method public f()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->I:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public g()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->E:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$m;->E:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->E:Landroid/os/Bundle;

    return-object v0
.end method

.method public h()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->K:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Landroidx/core/app/NotificationCompat$m;->m:I

    return v0
.end method

.method public j()J
    .locals 2

    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$m;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public l(Z)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$m;->v(IZ)V

    return-object p0
.end method

.method public m(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$m;->L:Ljava/lang/String;

    return-object p0
.end method

.method public n(I)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput p1, p0, Landroidx/core/app/NotificationCompat$m;->F:I

    return-object p0
.end method

.method public o(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$m;->g:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public p(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$m;->k(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$m;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public q(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$m;->k(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$m;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public r(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$m;->J:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public s(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$m;->I:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public t(I)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public u(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public w(I)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput p1, p0, Landroidx/core/app/NotificationCompat$m;->R:I

    return-object p0
.end method

.method public x(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$m;->h:Landroid/app/PendingIntent;

    const/16 p1, 0x80

    invoke-direct {p0, p1, p2}, Landroidx/core/app/NotificationCompat$m;->v(IZ)V

    return-object p0
.end method

.method public y(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$m;->x:Ljava/lang/String;

    return-object p0
.end method

.method public z(Z)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$m;->y:Z

    return-object p0
.end method
