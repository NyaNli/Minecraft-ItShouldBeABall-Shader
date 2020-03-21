# ItShouldBeABall Shader

Minecraft地形球面化Shader  
因为最近好多主播玩的《动物之森》里面的地形是球面化的，所以就想自己在MC里写一个  
最开始自己实现了XZ轴的球面化拉伸，但会导致方块和生物变得很扁  
后来看了这个视频：  
原视频：[How to make the Minecraft world look spherical? @Jeija (Youtube)](https://youtu.be/joFWr3JzBOI)  
国内转载：[【科学地玩Minecraft】如何创造一个看上去是球形的Minecraft世界？ 译制@Solara570 (bilibili)](https://www.bilibili.com/video/av13502884)  
才终于搞定了这个问题（想了一下午为什么是dh/dx而不是h/x，我恨数学QAQ）  
所以也不算原创了，姑且扔这里留个存档吧  

图：  
![2020-03-21_20 12 44](https://user-images.githubusercontent.com/20377926/77226671-1abbf680-6bb5-11ea-93ea-d228792c08cb.png)
![2020-03-21_20 13 17](https://user-images.githubusercontent.com/20377926/77226679-2ad3d600-6bb5-11ea-8a9c-830d7feac5f4.png)
![2020-03-21_20 14 13](https://user-images.githubusercontent.com/20377926/77226700-4b9c2b80-6bb5-11ea-86e1-9b11773eebad.png)
![2020-03-21_20 14 52](https://user-images.githubusercontent.com/20377926/77226705-52c33980-6bb5-11ea-9528-261b28ccf7d6.png)
![2020-03-21_20 16 00](https://user-images.githubusercontent.com/20377926/77226711-5d7dce80-6bb5-11ea-8fd4-6c154ba28c11.png)
![2020-03-21_20 20 34](https://user-images.githubusercontent.com/20377926/77226714-6373af80-6bb5-11ea-9bfc-634be2b686e6.png)