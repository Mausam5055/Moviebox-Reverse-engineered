.class public final Lv8/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv8/d$a;
    }
.end annotation


# static fields
.field private static final c:Lv8/d;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv8/d$a;

    invoke-direct {v0}, Lv8/d$a;-><init>()V

    invoke-virtual {v0}, Lv8/d$a;->a()Lv8/d;

    move-result-object v0

    sput-object v0, Lv8/d;->c:Lv8/d;

    return-void
.end method

.method constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lv8/d;->a:J

    iput-wide p3, p0, Lv8/d;->b:J

    return-void
.end method

.method public static c()Lv8/d$a;
    .locals 1

    new-instance v0, Lv8/d$a;

    invoke-direct {v0}, Lv8/d$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lv8/d;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lv8/d;->b:J

    return-wide v0
.end method
