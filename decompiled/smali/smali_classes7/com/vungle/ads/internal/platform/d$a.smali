.class public final Lcom/vungle/ads/internal/platform/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/platform/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/vungle/ads/internal/platform/d$a;

.field public static final MANUFACTURER_AMAZON:Ljava/lang/String; = "Amazon"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/platform/d$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/platform/d$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/platform/d$a;->$$INSTANCE:Lcom/vungle/ads/internal/platform/d$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
