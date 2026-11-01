.class abstract Lpp/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lpp/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpp/a;

    invoke-direct {v0}, Lpp/a;-><init>()V

    sput-object v0, Lpp/a$a;->a:Lpp/a;

    return-void
.end method

.method static synthetic a()Lpp/a;
    .locals 1

    sget-object v0, Lpp/a$a;->a:Lpp/a;

    return-object v0
.end method
