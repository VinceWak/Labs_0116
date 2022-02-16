![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)
# Lab | First dashboard with Streamlit


## Introduction
This Lab aims to develop your skills in data visualization and product's deployment


## Getting Started

You will have to develop a simple dashboard in Streamlit

## Deliverables
 - dash.py
 - screenshot of your dashboard



## Submission

Upon completion, add your deliverables to git. Then commit git and push your branch to the remote.

## Instructions
1. Import libraries
2. Please upload breast cancer dataset from pandas library

breast_cancer = datasets.load_breast_cancer(as_frame=True)

breast_cancer_df = pd.concat((breast_cancer["data"], breast_cancer["target"]), axis=1)

breast_cancer_df["target"] = [breast_cancer.target_names[val] for val in breast_cancer_df["target"]]

4. Set page layout as wide
5. Name your dashboard Breast Cancer Stats (use st.markdown)
6. Widgets and Layout Information 
Use widgets to update charts and explore different relationships.
#### Markdown 
Markdown  is used for adding heading above the dashboard and above widgets. Markdown is a simple language used for text decoration. Guide for Markdown
#### Dropdowns for Scatter Chart 
Create two dropdowns each having a list of measurements as options. Link one dropdown with the X-axis and one with the Y-axis of the scatter chart. 
Whenever  dropdown values change, the scatter chart will be updated to show a relationship between selected measurements.
#### Multi-Select for Bar Chart 
Create one multi-select for bar chart with all measurements names in it. 
Create a bar chart of average measurements based on a list of selected options in this multi-select.
#### Multi-Select and Radio Buttons for Histogram 
For the histogram,create a multi-select with a list of measurements. The histogram will be created for each selected measurement in this multi-select. Create radio buttons and link them with a histogram to select bins of a histogram. The histogram will be updated based on a number of selected bins.
Dropdowns for Hexbin Chart - Create two dropdowns like scatter plots and use them in the hexbin chart. It'll let us explore the relationship between different measurements through a hexbin chart for density exploration.
Columns Container - Use two main containers which will be laid out vertically one by one. The width of these two containers will span the width of the page. Then create two columns container in each of these containers. This will create a grid of 4 containers (two columns container inside of each main container). 
Put charts one by one into these 2x2 grid created by wrapping containers inside of containers.
Please make a NOTE that  all widgets are included in sidebar of the dashboard. The same widgets can be included in the main container of the dashboard above charts as well. It'll require a little bit of layout handling. We have included it in the sidebar to make things simple.

7. Create the charts
#### Scatter Chart Logic  
The code for this section starts by adding heading for scatter chart widgets in sidebar using markdown() method. 
Please note that we have called a method on sidebar attribute of streamlit to add it to a sidebar. 
If we call it without sidebar attribute then it'll add to the main container. We have then created two dropdowns using selectbox() method with a list of measurements. 
The first dropdown selectsmean radius by default and the second dropdown selects mean texture by default. The second dropdown uses index parameter to select 
the default second value which is mean texture. Both dropdowns return with selected values. 
We have then put if condition checking that values of dropdowns are set. If values of dropdowns are set then we create a scatter chart using those selected values. 
We have just created a scatter chart but not plotted it. 
Use scatter_fig object to plot chart when laying out charts in containers.
#### Side by Side Bar Chart Logic 
The logic for this section starts with adding markdown for bar chart multi-select in the sidebar. It then creates the average measurements dataframe we had explained earlier. Next, we create a multi-select in sidebar using multiselect() method. We provide it list of measurements to use as options and a list of default values that should be selected at the beginning. We have kept mean radius, mean texture, mean perimeter and area error as default values. We have then put it-else condition based on returned values by multi-select. If some options are selected then an if-section of code will be executed which will create a bar chart using selected options. The else-section will be executed if none of the options are selected and it'll create a bar chart with the default 4 values mentioned earlier.
#### Histogram Logic  
The logic for the histogram section starts by adding markdown in the sidebar above widgets for a histogram. We then create two widgets for a histogram. One is multi-select with a list of measurements and the second is radio buttons with values in the range 10-50. The default value for multi-select is mean radius and mean texture. The default value of bins radio buttons is 50. We have then introduced the if-else condition based on a list of selected options through multi-select. If options are selected then it'll go in if-section and create a histogram of selected options. Else, it'll go in the else-section and create a histogram of the 2 default values mentioned above. The number of bins of the histogram will be set based on radio buttons.
#### Hexbin Chart Logic 
The logic for the hexbin chart starts by adding a markdown heading in the sidebar above widgets for the hexbin chart. It then creates two dropdowns with a list of measurements. The first dropdown will help select X-axis measurement and the second dropdown will help select Y-axis measurement. We have then put if condition where we plot hexbin chart using selected values through dropdowns.
#### Dashboard Layout Logic 
In this section of code, create containers and layout figure objects for each chart to create a dashboard. We have first created a container using container() method. This will create a page-wide container. We have then created two containers of equal length inside of this container using columns() method. We have then used a container object and column container objects as a context manager (with statement). Inside of column containers, we have just called objects of a scatter figure and bar chart figure. This will add both charts next to each other. We have then followed the same logic for adding histogram and hexbin chart to a dashboard. This will create a grid of size 2x2 in which all four charts will be added.

#### 7.1 Scatter Plot
The scatter plot shows relationship between two measurements where each point of scatter point is colored to represent tumor type (malignant or benign). 
This can help us understand how measurements are varying across two tumor types.
By default, we'll be showing a relationship between measurements mean texture and mean area. 
When we include this chart in the dashboard, we'll be linking X and Y axes to dropdowns where each dropdown will have a list of all measurements. 
By selecting different values in dropdowns, we'll be able to explore the relationship between different combinations of measurements.

#### 7.2 Side by Side Bar Chart
For creating a side-by-side bar chart showing the value of the average measurements per tumor type, we have created an intermediate dataframe. 
The intermediate dataframe is created by grouping our original breast cancer dataframe based on tumor type and then taking an average of measurements for each group. 
Below we have printed an intermediate dataframe that has information about the average value for each measurement per tumor type.
avg_breast_cancer_df = breast_cancer_df.groupby("target").mean()
avg_breast_cancer_df
Create a side-by-side bar chart which shows an average of measurements mean radius, mean texture, mean perimeter, and area error per cancer tumor type. 
By default, these four values will be displayed in the dashboard.

#### 7.3 Histogram
The histogram shows the distribution of measurements values. This can be useful to analyze how values of measurements are spread.

By default, display a histogram of mean radius and mean texture. Create a multi-select with a list of all measurements in the dashboard. 
Link this multi-select with this histogram so that histogram of all selected measurements in multi-select is included in the chart.

Start the code by creating a figure and an axis object. 
Create a dataframe that has an entry for only mean radius and mean texture. The histogram is created by calling .plot.hist() method on this dataframe.

#### 7.4 Hexbin Chart
The hexbin chart is useful to show a relationship between two attributes explaining the density of samples. 
The chart has hexagons in it where the color of a hexagon is based on a number of data samples that fall in that hexagon. 
The darker hexagon represents the presence of more points in it.

Create a hexbin chart of mean texture and mean area. 
Create two dropdowns in our dashboard and link them with a hexbin chart. 
Both dropdowns will have a list of measurements of cancer tumor type. We can try different combinations of these measurements using dropdowns to analyze data using a hexbin chart.


8. Add the comments to all your code

9. If you have issues, the creation of this dashboard is described here.

https://coderzcolumn.com/tutorials/data-science/basic-dashboard-using-streamlit-and-matplotlib
