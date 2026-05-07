package nd.mahn;

import java.util.HashMap;
import java.util.Map;

/*
Valid Anagram
Easy
Topics
Company Tags
Hints
Given two strings s and t, return true if the two strings are anagrams of each other, otherwise return false.

An anagram is a string that contains the exact same characters as another string, but the order of the characters can be different.

Example 1:

Input: s = "racecar", t = "carrace"

Output: true
Example 2:

Input: s = "jar", t = "jam"

Output: false
 */
public class B02ValidAnagram {

    public static void main(String[] args) {
        String s = "racecar", t = "carrace";
        System.out.println(isAnagram(s, t));
    }

    public static boolean isAnagram(String s, String t) {

        if (s.length() != t.length()) {
            return false;
        }
        Map<Character, Integer> sMap = getCharacterIntegerMap(t);
        Map<Character, Integer> tMap = getCharacterIntegerMap(s);
        return tMap.equals(sMap);
    }

    private static Map<Character, Integer> getCharacterIntegerMap(String s) {
        Map<Character, Integer> map = new HashMap<>();
        char[] ints = s.toCharArray();
        for (char c : ints) {
            if (map.containsKey(c)) {
                int cc = map.get(c);
                cc++;
                map.put(c, cc);
            } else {
                map.put(c, 1);
            }
        }
        return map;
    }

    // đáp án
    public static boolean isAnagramChar(String s, String t) {
        if (s.length() != t.length()) {
            return false;
        }

        String sLower = s.toLowerCase();
        String tLower = t.toLowerCase();
// chũ a
        int base = 97;
        int[] alphabet = new int[26];

        for (int i = 0; i < sLower.length(); i++) {
            char q = sLower.charAt(i);
            char w = tLower.charAt(i);

            alphabet[q - base] = alphabet[q - base] + 1;
            alphabet[w - base] = alphabet[w - base] - 1;
        }

        for (int j : alphabet) {
            if (j != 0) {
                return false;
            }
        }

        return true;
    }
}
