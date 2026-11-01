.class public final Lf/g$b$a;
.super Lf/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lf/g$b$a;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf/g$b$a;

    invoke-direct {v0}, Lf/g$b$a;-><init>()V

    sput-object v0, Lf/g$b$a;->a:Lf/g$b$a;

    const/4 v0, 0x1

    sput v0, Lf/g$b$a;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf/g$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    sget v0, Lf/g$b$a;->b:I

    return v0
.end method
