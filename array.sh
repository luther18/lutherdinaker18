using System;
using System.Collections.Generic;
 
class GFG
{
     
// Function to find the repeating
// elements with there count
static Dictionary<int, int> findRepeating(int []arr, int size){
     
    // Hash map to store the
    // frequency of elements
    Dictionary<int,int> frequency = new Dictionary<int,int>();
     
    // Loop to store the frequency of
    // elements of array
    for(int i = 0; i < size; i++)
    {
        if(frequency.ContainsKey(arr[i]))
        {
            frequency[arr[i]] = frequency[arr[i]] + 1;
        }
        else
        {
            frequency.Add(arr[i], 1);
        }
    }
    return frequency;
}
 
// Driver Code
public static void Main(String []args)
{
    int []arr = {4, 4, 5, 5, 6};
    int arr_size = arr.Length;
    Dictionary<int,int> frequency = findRepeating(arr, arr_size);
    Console.WriteLine("Below is the frequency"
                        +"of repeated elements -");
    foreach (KeyValuePair<int,int> entry in frequency)
        if (entry.Value > 1)
            Console.WriteLine(entry.Key+ " --> "+entry.Value);
}
}
