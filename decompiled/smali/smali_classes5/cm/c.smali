.class public abstract Lcm/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/c$d;,
        Lcm/c$b;,
        Lcm/c$c;,
        Lcm/c$a;
    }
.end annotation


# static fields
.field private static final a:Lcm/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/c$e;

    invoke-direct {v0}, Lcm/c$e;-><init>()V

    sput-object v0, Lcm/c;->a:Lcm/c$c;

    return-void
.end method

.method private static a(Lcm/f;Lcm/c$a;)Lcm/f;
    .locals 1

    sget-object v0, Lcm/c;->a:Lcm/c$c;

    invoke-static {p0, p1, v0}, Lcm/c;->b(Lcm/f;Lcm/c$a;Lcm/c$c;)Lcm/f;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcm/f;Lcm/c$a;Lcm/c$c;)Lcm/f;
    .locals 1

    new-instance v0, Lcm/c$d;

    invoke-direct {v0, p0, p1, p2}, Lcm/c$d;-><init>(Lcm/f;Lcm/c$a;Lcm/c$c;)V

    return-object v0
.end method

.method public static c(ILcm/c$a;)Lcm/f;
    .locals 1

    new-instance v0, Lcm/h;

    invoke-direct {v0, p0}, Lcm/h;-><init>(I)V

    invoke-static {v0, p1}, Lcm/c;->a(Lcm/f;Lcm/c$a;)Lcm/f;

    move-result-object p0

    return-object p0
.end method
