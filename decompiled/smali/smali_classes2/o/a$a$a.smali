.class public final Lo/a$a$a;
.super Lo/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lo/a$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/a$a$a;

    invoke-direct {v0}, Lo/a$a$a;-><init>()V

    sput-object v0, Lo/a$a$a;->a:Lo/a$a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Closed"

    return-object v0
.end method
