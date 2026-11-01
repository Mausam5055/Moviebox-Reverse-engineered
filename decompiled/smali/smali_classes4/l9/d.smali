.class public final Ll9/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/n;


# instance fields
.field private final a:J

.field private final b:Lg9/n;


# direct methods
.method public constructor <init>(JLg9/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ll9/d;->a:J

    iput-object p3, p0, Ll9/d;->b:Lg9/n;

    return-void
.end method

.method static synthetic a(Ll9/d;)J
    .locals 2

    iget-wide v0, p0, Ll9/d;->a:J

    return-wide v0
.end method


# virtual methods
.method public d(Lg9/b0;)V
    .locals 2

    iget-object v0, p0, Ll9/d;->b:Lg9/n;

    new-instance v1, Ll9/d$a;

    invoke-direct {v1, p0, p1}, Ll9/d$a;-><init>(Ll9/d;Lg9/b0;)V

    invoke-interface {v0, v1}, Lg9/n;->d(Lg9/b0;)V

    return-void
.end method

.method public endTracks()V
    .locals 1

    iget-object v0, p0, Ll9/d;->b:Lg9/n;

    invoke-interface {v0}, Lg9/n;->endTracks()V

    return-void
.end method

.method public track(II)Lg9/e0;
    .locals 1

    iget-object v0, p0, Ll9/d;->b:Lg9/n;

    invoke-interface {v0, p1, p2}, Lg9/n;->track(II)Lg9/e0;

    move-result-object p1

    return-object p1
.end method
