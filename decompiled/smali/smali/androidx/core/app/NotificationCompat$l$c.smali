.class public final Landroidx/core/app/NotificationCompat$l$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/app/PendingIntent;

.field private b:Landroidx/core/graphics/drawable/IconCompat;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/app/PendingIntent;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$l$c;->a:Landroid/app/PendingIntent;

    iput-object p2, p0, Landroidx/core/app/NotificationCompat$l$c;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Bubbles require non-null icon"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Bubble requires non-null pending intent"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$l$c;->g:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bubble requires a non-null shortcut id"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(IZ)Landroidx/core/app/NotificationCompat$l$c;
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Landroidx/core/app/NotificationCompat$l$c;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/NotificationCompat$l$c;->e:I

    goto :goto_0

    :cond_0
    iget p2, p0, Landroidx/core/app/NotificationCompat$l$c;->e:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/NotificationCompat$l$c;->e:I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()Landroidx/core/app/NotificationCompat$l;
    .locals 10

    iget-object v7, p0, Landroidx/core/app/NotificationCompat$l$c;->g:Ljava/lang/String;

    if-nez v7, :cond_1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$l$c;->a:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must supply pending intent or shortcut to bubble"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v7, :cond_3

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$l$c;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must supply an icon or shortcut for the bubble"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    new-instance v9, Landroidx/core/app/NotificationCompat$l;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$l$c;->a:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$l$c;->f:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroidx/core/app/NotificationCompat$l$c;->b:Landroidx/core/graphics/drawable/IconCompat;

    iget v4, p0, Landroidx/core/app/NotificationCompat$l$c;->c:I

    iget v5, p0, Landroidx/core/app/NotificationCompat$l$c;->d:I

    iget v6, p0, Landroidx/core/app/NotificationCompat$l$c;->e:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroidx/core/app/NotificationCompat$l;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;Landroidx/core/app/NotificationCompat$a;)V

    iget v0, p0, Landroidx/core/app/NotificationCompat$l$c;->e:I

    invoke-virtual {v9, v0}, Landroidx/core/app/NotificationCompat$l;->j(I)V

    return-object v9
.end method

.method public b(Z)Landroidx/core/app/NotificationCompat$l$c;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$l$c;->f(IZ)Landroidx/core/app/NotificationCompat$l$c;

    return-object p0
.end method

.method public c(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$l$c;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$l$c;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public d(I)Landroidx/core/app/NotificationCompat$l$c;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/core/app/NotificationCompat$l$c;->c:I

    iput v0, p0, Landroidx/core/app/NotificationCompat$l$c;->d:I

    return-object p0
.end method

.method public e(I)Landroidx/core/app/NotificationCompat$l$c;
    .locals 0

    iput p1, p0, Landroidx/core/app/NotificationCompat$l$c;->d:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/core/app/NotificationCompat$l$c;->c:I

    return-object p0
.end method

.method public g(Z)Landroidx/core/app/NotificationCompat$l$c;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$l$c;->f(IZ)Landroidx/core/app/NotificationCompat$l$c;

    return-object p0
.end method
