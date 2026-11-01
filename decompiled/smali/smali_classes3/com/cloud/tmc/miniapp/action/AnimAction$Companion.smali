.class public final Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/action/AnimAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

.field private static final ANIM_BOTTOM:I

.field public static final ANIM_DEFAULT:I = -0x1

.field public static final ANIM_EMPTY:I = 0x0

.field private static final ANIM_LEFT:I

.field private static final ANIM_RIGHT:I

.field private static final ANIM_SCALE:I

.field public static final ANIM_TOAST:I = 0x1030004

.field private static final ANIM_TOP:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->$$INSTANCE:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    sget v0, Lcom/cloud/tmc/miniapp/R$style;->ScaleAnimStyle:I

    sput v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_SCALE:I

    sget v0, Lcom/cloud/tmc/miniapp/R$style;->TopAnimStyle:I

    sput v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_TOP:I

    sget v0, Lcom/cloud/tmc/miniapp/R$style;->BottomAnimStyle:I

    sput v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_BOTTOM:I

    sget v0, Lcom/cloud/tmc/miniapp/R$style;->LeftAnimStyle:I

    sput v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_LEFT:I

    sget v0, Lcom/cloud/tmc/miniapp/R$style;->RightAnimStyle:I

    sput v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_RIGHT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getANIM_BOTTOM()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_BOTTOM:I

    return v0
.end method

.method public final getANIM_LEFT()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_LEFT:I

    return v0
.end method

.method public final getANIM_RIGHT()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_RIGHT:I

    return v0
.end method

.method public final getANIM_SCALE()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_SCALE:I

    return v0
.end method

.method public final getANIM_TOP()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_TOP:I

    return v0
.end method
