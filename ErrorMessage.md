#   Error 

??  **Extra Argument in Call**
!!  这是因为 swift view 规定每个view最能只能放置不超过10个元素。当放置第十一个元素时，旁边就会出现错误提示 "Extra Argument in Call"。
!!! 使用 group 包裹起来，并且一个view最多也只能放置十个 group ，每个group最多放置十个元素。
!!! 新建子视图类。
--- 使用 for / foreach 创建的元素无此限制。 

??  **Type '()' cannot conform to 'View'**
!!  

#   快捷键 
⌘ + l   (L)快速跳至某行。

