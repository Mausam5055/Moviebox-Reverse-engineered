.class public final Landroidx/work/impl/o;
.super Ly3/c;


# static fields
.field public static final c:Landroidx/work/impl/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/o;

    invoke-direct {v0}, Landroidx/work/impl/o;-><init>()V

    sput-object v0, Landroidx/work/impl/o;->c:Landroidx/work/impl/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Ly3/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(La4/d;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    return-void
.end method
