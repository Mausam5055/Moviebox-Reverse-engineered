.class final Lrb/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field static final a:Lrb/a$a;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;

.field private static final d:Lbc/b;

.field private static final e:Lbc/b;

.field private static final f:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrb/a$a;

    invoke-direct {v0}, Lrb/a$a;-><init>()V

    sput-object v0, Lrb/a$a;->a:Lrb/a$a;

    const-string v0, "rolloutId"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lrb/a$a;->b:Lbc/b;

    const-string v0, "parameterKey"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lrb/a$a;->c:Lbc/b;

    const-string v0, "parameterValue"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lrb/a$a;->d:Lbc/b;

    const-string v0, "variantId"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lrb/a$a;->e:Lbc/b;

    const-string v0, "templateVersion"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lrb/a$a;->f:Lbc/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lrb/i;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lrb/a$a;->b(Lrb/i;Lbc/d;)V

    return-void
.end method

.method public b(Lrb/i;Lbc/d;)V
    .locals 3

    sget-object v0, Lrb/a$a;->b:Lbc/b;

    invoke-virtual {p1}, Lrb/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lrb/a$a;->c:Lbc/b;

    invoke-virtual {p1}, Lrb/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lrb/a$a;->d:Lbc/b;

    invoke-virtual {p1}, Lrb/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lrb/a$a;->e:Lbc/b;

    invoke-virtual {p1}, Lrb/i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lrb/a$a;->f:Lbc/b;

    invoke-virtual {p1}, Lrb/i;->f()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->a(Lbc/b;J)Lbc/d;

    return-void
.end method
